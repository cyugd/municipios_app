import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:municipios_app/models/municipio.dart';

// Modelo para los mensajes
class ChatMessage {
  final String role;
  final String text;
  final DateTime timestamp;

  ChatMessage({required this.role, required this.text, required this.timestamp});

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      role: map['role'] ?? '',
      text: map['text'] ?? '',
      timestamp: (map['timestamp'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }
}

// Estado del Chat
class ChatState {
  final List<ChatMessage> messages;
  final bool isLoading;
  final bool isInitializing;

  ChatState({
    this.messages = const [],
    this.isLoading = false,
    this.isInitializing = true,
  });

  ChatState copyWith({
    List<ChatMessage>? messages,
    bool? isLoading,
    bool? isInitializing,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      isInitializing: isInitializing ?? this.isInitializing,
    );
  }
}

// Notificador del Chat
class ChatNotifier extends StateNotifier<ChatState> {
  final Municipio? municipio;
  final String _apiKey = 'AIzaSyBhw9O6SSsVRhkx-IS7QIcdCLbxOFvytG8';
  
  late GenerativeModel _model;
  ChatSession? _chat;
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  ChatNotifier(this.municipio) : super(ChatState()) {
    _initChat();
  }

  String get _chatPath => 'users/${_auth.currentUser!.uid}/chats/${municipio?.id ?? "general"}/messages';

  Future<void> _initChat() async {
    final systemPrompt = municipio != null 
      ? 'Eres un guía experto de Tamaulipas enfocado en ${municipio!.nombre}.'
      : 'Eres un asistente experto en los 43 municipios de Tamaulipas.';

    _model = GenerativeModel(
      model: 'models/gemini-flash-latest',
      apiKey: _apiKey,
      systemInstruction: Content.system(systemPrompt),
      safetySettings: [
        SafetySetting(HarmCategory.harassment, HarmBlockThreshold.none),
        SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.none),
        SafetySetting(HarmCategory.sexuallyExplicit, HarmBlockThreshold.none),
        SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.none),
      ],
    );

    try {
      final snapshot = await _firestore.collection(_chatPath).orderBy('timestamp').get();
      List<ChatMessage> loadedMessages = [];
      List<Content> history = [];

      for (var doc in snapshot.docs) {
        final msg = ChatMessage.fromMap(doc.data());
        loadedMessages.add(msg);
        
        if (history.isEmpty && msg.role == 'model') continue;
        history.add(msg.role == 'user' 
          ? Content.text(msg.text) 
          : Content.model([TextPart(msg.text)]));
      }

      if (loadedMessages.isEmpty) {
        final welcome = '¡Hola! Soy tu asistente de Tamaulipas. ¿En qué puedo ayudarte?';
        await _firestore.collection(_chatPath).add({
          'role': 'model',
          'text': welcome,
          'timestamp': FieldValue.serverTimestamp(),
        });
        loadedMessages.add(ChatMessage(role: 'model', text: welcome, timestamp: DateTime.now()));
      }

      _chat = _model.startChat(history: history);
      state = state.copyWith(messages: loadedMessages, isInitializing: false);
    } catch (e) {
      state = state.copyWith(isInitializing: false);
    }
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty || _chat == null) return;

    final userMsg = ChatMessage(role: 'user', text: text, timestamp: DateTime.now());
    state = state.copyWith(messages: [...state.messages, userMsg], isLoading: true);

    try {
      await _firestore.collection(_chatPath).add({
        'role': 'user',
        'text': text,
        'timestamp': FieldValue.serverTimestamp(),
      });

      final response = await _chat!.sendMessage(Content.text(text));
      final responseText = response.text ?? 'Sin respuesta.';

      final aiMsg = ChatMessage(role: 'model', text: responseText, timestamp: DateTime.now());
      
      await _firestore.collection(_chatPath).add({
        'role': 'model',
        'text': responseText,
        'timestamp': FieldValue.serverTimestamp(),
      });

      state = state.copyWith(messages: [...state.messages, aiMsg], isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> clearChat() async {
    state = state.copyWith(isInitializing: true);
    final snapshot = await _firestore.collection(_chatPath).get();
    for (var doc in snapshot.docs) { await doc.reference.delete(); }
    _initChat();
  }
}

// Provider de la familia para manejar múltiples instancias (general y por municipio)
final chatProvider = StateNotifierProvider.family<ChatNotifier, ChatState, Municipio?>((ref, municipio) {
  return ChatNotifier(municipio);
});
