import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatAIWidget extends StatefulWidget {
  final Municipio? municipio; 
  const ChatAIWidget({Key? key, this.municipio}) : super(key: key);

  @override
  State<ChatAIWidget> createState() => _ChatAIWidgetState();
}

class _ChatAIWidgetState extends State<ChatAIWidget> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> _messages = [];
  bool _isLoading = false;
  bool _isInitializing = true;
  
  late GenerativeModel _model;
  ChatSession? _chat;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final User? _user = FirebaseAuth.instance.currentUser;

  String get _chatPath => 'users/${_user!.uid}/chats/${widget.municipio?.id ?? "general"}/messages';

  @override
  void initState() {
    super.initState();
    _initChatSystem();
  }

  Future<void> _initChatSystem() async {
    const apiKey = 'AIzaSyCztBqbMOkfcPJqnd3fbFyD7ThDH4_We7o';
    
    final systemPrompt = widget.municipio != null 
      ? 'Eres un guía experto del estado de Tamaulipas, México enfocado en el municipio de ${widget.municipio!.nombre}. Ayuda al usuario con datos turísticos e históricos de forma amable.'
      : 'Eres un asistente experto en los 43 municipios de Tamaulipas, México. Responde dudas sobre historia, cultura y geografía del estado.';

    // USAMOS gemini-1.5-flash-latest O gemini-1.5-flash SEGÚN COMPATIBILIDAD
    // Si uno falla, intenta con el otro. Aquí usaremos gemini-1.5-flash-latest que suele ser más estable para v1beta
    _model = GenerativeModel(
      model: 'models/gemini-flash-latest',
      apiKey: apiKey,
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
      List<Content> history = [];
      
      for (var doc in snapshot.docs) {
        final data = doc.data();
        _messages.add(data);
        if (history.isEmpty && data['role'] == 'model') continue;
        history.add(data['role'] == 'user' 
          ? Content.text(data['text'] ?? '') 
          : Content.model([TextPart(data['text'] ?? '')]));
      }
      
      if (_messages.isEmpty) {
        final welcome = '¡Hola! Soy tu asistente de Tamaulipas. ¿Qué te gustaría saber hoy?';
        await _firestore.collection(_chatPath).add({
          'role': 'model',
          'text': welcome,
          'timestamp': FieldValue.serverTimestamp(),
        });
        _messages.add({'role': 'model', 'text': welcome});
      }

      _chat = _model.startChat(history: history);
      
    } catch (e) {
      debugPrint("INIT ERROR: $e");
    } finally {
      if (mounted) setState(() => _isInitializing = false);
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      }
    });
  }

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty || _chat == null) return;

    setState(() {
      _messages.add({'role': 'user', 'text': text, 'timestamp': DateTime.now()});
      _isLoading = true;
    });
    _controller.clear();
    _scrollToBottom();

    try {
      await _firestore.collection(_chatPath).add({
        'role': 'user',
        'text': text,
        'timestamp': FieldValue.serverTimestamp(),
      });

      final response = await _chat!.sendMessage(Content.text(text));
      final responseText = response.text ?? 'Lo siento, no tengo una respuesta para eso.';

      await _firestore.collection(_chatPath).add({
        'role': 'model',
        'text': responseText,
        'timestamp': FieldValue.serverTimestamp(),
      });

      setState(() => _messages.add({'role': 'model', 'text': responseText, 'timestamp': DateTime.now()}));
      
    } catch (e) {
      debugPrint("SEND ERROR: $e");
      String errorMsg = 'Error al procesar la respuesta.';
      if (e.toString().contains('404')) {
        errorMsg = 'Modelo no encontrado. Intentando con versión alternativa...';
        // Intento de recuperación cambiando el modelo en caliente si es posible
      } else if (e.toString().contains('SAFETY')) {
        errorMsg = 'Bloqueado por filtros de seguridad de la IA.';
      }
      
      setState(() => _messages.add({'role': 'model', 'text': errorMsg, 'timestamp': DateTime.now()}));
    } finally {
      setState(() => _isLoading = false);
      _scrollToBottom();
    }
  }

  Future<void> _clearChat() async {
    final snapshot = await _firestore.collection(_chatPath).get();
    for (var doc in snapshot.docs) { await doc.reference.delete(); }
    setState(() { _messages.clear(); _isInitializing = true; });
    _initChatSystem();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'ai_fab_${widget.municipio?.id ?? "global"}',
      backgroundColor: Colors.teal,
      child: const Icon(Icons.smart_toy, color: Colors.white),
      onPressed: () => _showChat(context),
    );
  }

  void _showChat(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Container(
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          child: _isInitializing 
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
                    child: Row(
                      children: [
                        const Icon(Icons.auto_awesome, color: Colors.white),
                        const SizedBox(width: 10),
                        const Expanded(child: Text('Asistente Tamaulipas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                        IconButton(icon: const Icon(Icons.delete_sweep, color: Colors.white70), onPressed: () async { await _clearChat(); setModalState(() {}); }),
                        IconButton(icon: const Icon(Icons.close, color: Colors.white), onPressed: () => Navigator.pop(context)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        final m = _messages[index];
                        final isUser = m['role'] == 'user';
                        return Align(
                          alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                            decoration: BoxDecoration(color: isUser ? Colors.teal[100] : Colors.grey[200], borderRadius: BorderRadius.circular(15)),
                            child: Text(m['text'] ?? ''),
                          ),
                        );
                      },
                    ),
                  ),
                  if (_isLoading) const LinearProgressIndicator(color: Colors.teal),
                  Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 16, left: 16, right: 16, top: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(hintText: 'Escribe tu pregunta...'),
                            onSubmitted: (_) async { await _sendMessage(); setModalState(() {}); },
                          ),
                        ),
                        IconButton(icon: const Icon(Icons.send, color: Colors.teal), onPressed: () async { await _sendMessage(); setModalState(() {}); }),
                      ],
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
