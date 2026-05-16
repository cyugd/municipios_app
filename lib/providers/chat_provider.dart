import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/services/auth_service.dart';

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

class ChatState {
  final List<ChatMessage> messages;
  final bool isLoading;
  final bool isInitializing;
  final String? error;
  final String? userId;

  ChatState({
    this.messages = const [],
    this.isLoading = false,
    this.isInitializing = true,
    this.error,
    this.userId,
  });

  ChatState copyWith({
    List<ChatMessage>? messages,
    bool? isLoading,
    bool? isInitializing,
    String? error,
    String? userId,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      isInitializing: isInitializing ?? this.isInitializing,
      error: error,
      userId: userId ?? this.userId,
    );
  }
}

class ChatNotifier extends StateNotifier<ChatState> {
  final Municipio? municipio;
  final String? userId;
  final String _apiKey = 'AIzaSyCQ5DZV-oqEfQ3TGHYFnxoU2sWoy3p-2mM';

  late GenerativeModel _model;
  ChatSession? _chat;
  final _firestore = FirebaseFirestore.instance;

  ChatNotifier(this.municipio, this.userId) : super(ChatState(userId: userId)) {
    _initChat();
  }

  String get _chatPath {
    if (userId == null) return 'temp_chats/anonymous/messages';
    return 'users/$userId/chats/${municipio?.id ?? "general"}/messages';
  }

  Future<void> _initChat() async {
    String systemPrompt = '';
    
    if (municipio != null) {
      systemPrompt = '''
Eres el asistente virtual oficial de la aplicación "Municipios de Tamaulipas", especializado como guía experto del municipio de ${municipio!.nombre}.

Tu misión es proporcionar información detallada, veraz y entusiasta sobre ${municipio!.nombre} y el estado de Tamaulipas.

DATOS OFICIALES DE ${municipio!.nombre.toUpperCase()}:
- Gentilicio: ${municipio!.gentilicio}
- Población: ${municipio!.poblacion}
- Superficie: ${municipio!.superficie}
- Resumen: ${municipio!.descripcionCorta}
- Historia y detalles: ${municipio!.descripcionLarga}

REGLAS DE RESPUESTA:
1. Responde siempre en español (México).
2. Mantén un tono amable, profesional y orgulloso de la identidad tamaulipeca.
3. Prioriza la información oficial proporcionada arriba para preguntas sobre ${municipio!.nombre}.
4. Si te preguntan sobre otros municipios o temas generales de Tamaulipas, responde con precisión usando tu base de conocimientos.
5. Utiliza un formato estructurado (negritas, listas) para facilitar la lectura, acorde al estilo visual de la aplicación.
''';
    } else {
      systemPrompt = '''
Eres el asistente virtual oficial de la aplicación "Municipios de Tamaulipas", experto en la historia, geografía, cultura y turismo de los 43 municipios del estado de Tamaulipas.

Tu objetivo es ayudar al usuario a descubrir la riqueza de Tamaulipas. Responde de manera profesional, amable y detallada sobre cualquier aspecto del estado o sus municipios.
''';
    }

    _model = GenerativeModel(
      model: 'gemini-flash-latest', 
      apiKey: _apiKey,
      systemInstruction: Content.system(systemPrompt),
    );

    List<ChatMessage> loadedMessages = [];
    List<Content> history = [];

    try {
      final snapshot = await _firestore.collection(_chatPath).orderBy('timestamp').limit(20).get();
      for (var doc in snapshot.docs) {
        final msg = ChatMessage.fromMap(doc.data());
        loadedMessages.add(msg);
        if (history.isEmpty && msg.role != 'user') continue;
        history.add(msg.role == 'user' ? Content.text(msg.text) : Content.model([TextPart(msg.text)]));
      }
    } catch (e) {
      print('Firestore Read Error: $e');
    }

    if (loadedMessages.isEmpty) {
      final welcomeText = municipio != null 
          ? '¡Hola! Soy tu guía de ${municipio!.nombre}. ¿Qué te gustaría saber hoy?' 
          : '¡Hola! Soy tu asistente de Tamaulipas. ¿En qué puedo ayudarte hoy?';
      
      final welcomeMsg = ChatMessage(
          role: 'model',
          text: welcomeText,
          timestamp: DateTime.now()
      );

      loadedMessages.add(welcomeMsg);
      
      _firestore.collection(_chatPath).add({
        'role': 'model', 
        'text': welcomeText, 
        'timestamp': FieldValue.serverTimestamp(),
      });
    }

    _chat = _model.startChat(history: history);
    state = state.copyWith(messages: loadedMessages, isInitializing: false);
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final userMsg = ChatMessage(role: 'user', text: text, timestamp: DateTime.now());
    state = state.copyWith(messages: [...state.messages, userMsg], isLoading: true, error: null);

    _firestore.collection(_chatPath).add({
      'role': 'user', 'text': text, 'timestamp': FieldValue.serverTimestamp(),
    }).catchError((e) => print('Firestore Error: $e'));

    try {
      if (_chat == null) await _initChat();

      final response = await _chat!.sendMessage(Content.text(text));
      final responseText = response.text ?? 'Sin respuesta.';
      final aiMsg = ChatMessage(role: 'model', text: responseText, timestamp: DateTime.now());

      _firestore.collection(_chatPath).add({
        'role': 'model', 'text': responseText, 'timestamp': FieldValue.serverTimestamp(),
      }).catchError((e) => print('Firestore Error: $e'));

      state = state.copyWith(messages: [...state.messages, aiMsg], isLoading: false);
    } catch (e) {
      print('AI Error: $e');
      String errorTxt = 'Error al conectar con la IA.';
      if (e.toString().contains('429')) errorTxt = 'Cuota excedida. Espera un minuto.';
      else if (e.toString().contains('403')) errorTxt = 'Error de autenticación/permisos de API.';

      state = state.copyWith(
          messages: [...state.messages, ChatMessage(role: 'model', text: errorTxt, timestamp: DateTime.now())],
          isLoading: false,
          error: e.toString()
      );
    }
  }

  Future<void> clearChat() async {
    state = state.copyWith(isInitializing: true);
    try {
      final snapshot = await _firestore.collection(_chatPath).get();
      for (var doc in snapshot.docs) { await doc.reference.delete(); }
    } catch (e) {}
    _initChat();
  }
}

final chatProvider = StateNotifierProvider.family<ChatNotifier, ChatState, Municipio?>((ref, municipio) {
  final user = ref.watch(authStateProvider).value;
  return ChatNotifier(municipio, user?.uid);
});
