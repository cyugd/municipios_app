import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/providers/chat_provider.dart';

class ChatAIWidget extends ConsumerStatefulWidget {
  final Municipio? municipio;
  const ChatAIWidget({Key? key, this.municipio}) : super(key: key);

  @override
  ConsumerState<ChatAIWidget> createState() => _ChatAIWidgetState();
}

class _ChatAIWidgetState extends ConsumerState<ChatAIWidget> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Obtenemos el estado y el notificador del chat usando Riverpod
    final chatState = ref.watch(chatProvider(widget.municipio));
    final chatNotifier = ref.read(chatProvider(widget.municipio).notifier);

    // Escuchamos cambios en los mensajes para hacer scroll automático
    ref.listen(chatProvider(widget.municipio), (previous, next) {
      if (previous?.messages.length != next.messages.length) {
        _scrollToBottom();
      }
    });

    return FloatingActionButton(
      heroTag: 'ai_fab_${widget.municipio?.id ?? "global"}',
      backgroundColor: Colors.teal,
      child: const Icon(Icons.smart_toy, color: Colors.white),
      onPressed: () => _showChat(context, chatState, chatNotifier),
    );
  }

  void _showChat(BuildContext context, ChatState state, ChatNotifier notifier) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        child: state.isInitializing
            ? const Center(child: CircularProgressIndicator())
            : Column(
          children: [
            // Cabecera del Chat
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.auto_awesome, color: Colors.white),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Asistente - ${widget.municipio?.nombre ?? "Tamaulipas"}',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete_sweep, color: Colors.white70),
                    tooltip: 'Borrar historial',
                    onPressed: () => notifier.clearChat(),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            // Lista de Mensajes
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: state.messages.length,
                itemBuilder: (context, index) {
                  final m = state.messages[index];
                  final isUser = m.role == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.75),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.teal[100] : Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        m.text,
                        style: const TextStyle(fontSize: 14, height: 1.4),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Indicador de carga de la IA
            if (state.isLoading)
              const LinearProgressIndicator(color: Colors.teal, backgroundColor: Colors.transparent),
            // Área de entrada de texto
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 16,
                left: 16,
                right: 16,
                top: 8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Pregunta sobre Tamaulipas...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      onSubmitted: (val) {
                        if (val.trim().isNotEmpty) {
                          notifier.sendMessage(val.trim());
                          _controller.clear();
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.teal),
                    onPressed: () {
                      if (_controller.text.trim().isNotEmpty) {
                        notifier.sendMessage(_controller.text.trim());
                        _controller.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}