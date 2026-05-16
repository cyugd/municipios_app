import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/providers/chat_provider.dart';

class ChatAIWidget extends ConsumerStatefulWidget {
  final Municipio? municipio;
  const ChatAIWidget({super.key, this.municipio});

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
    final chatState = ref.watch(chatProvider(widget.municipio));
    final chatNotifier = ref.read(chatProvider(widget.municipio).notifier);

    ref.listen(chatProvider(widget.municipio), (previous, next) {
      if (previous?.messages.length != next.messages.length) {
        _scrollToBottom();
      }
    });

    return FloatingActionButton(
      heroTag: 'ai_fab_${widget.municipio?.id ?? "global"}',
      backgroundColor: const Color(0xFFFFD700),
      child: const Icon(Icons.smart_toy, color: Color(0xFF722F37)),
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
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF722F37),
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.auto_awesome, color: Colors.white),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Asistente - ${widget.municipio?.nombre ?? "Tamaulipas"}',
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
                      decoration: BoxDecoration(
                        color: isUser ? const Color(0xFFFFD700).withValues(alpha: 0.3) : Colors.grey[200],
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
            if (state.isLoading)
              const LinearProgressIndicator(color: Color(0xFF722F37), backgroundColor: Colors.transparent),
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
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[100],
                        filled: true,
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
                    icon: const Icon(Icons.send, color: Color(0xFF722F37)),
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