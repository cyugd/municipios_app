import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:municipios_app/models/municipio.dart';
import 'package:municipios_app/providers/quiz_provider.dart';

class QuizScreen extends ConsumerWidget {
  final Municipio municipio;
  const QuizScreen({Key? key, required this.municipio}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizProvider(municipio));
    final notifier = ref.read(quizProvider(municipio).notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Trivia: ${municipio.nombre}'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE0F2F1), Color(0xFFB2DFDB)],
          ),
        ),
        child: _buildBody(context, state, notifier),
      ),
    );
  }

  Widget _buildBody(BuildContext context, QuizState state, QuizNotifier notifier) {
    if (state.isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Colors.teal),
            SizedBox(height: 20),
            Text(
              'Cargando tus preguntas',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    if (state.error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 60, color: Colors.red),
              const SizedBox(height: 16),
              Text(state.error!, textAlign: TextAlign.center),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => notifier.restart(),
                child: const Text('Reintentar'),
              ),
            ],
          ),
        ),
      );
    }

    if (state.isFinished) {
      return _buildResult(state, notifier);
    }

    if (state.questions.isEmpty) {
      return const Center(child: Text('No hay preguntas disponibles.'));
    }

    final question = state.questions[state.currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Progreso
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pregunta ${state.currentQuestionIndex + 1} de ${state.questions.length}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Puntos: ${state.score}',
                style: const TextStyle(fontSize: 18, color: Colors.teal, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: (state.currentQuestionIndex + 1) / state.questions.length,
            backgroundColor: Colors.white,
            color: Colors.teal,
          ),
          const SizedBox(height: 10),
          // Historial de respuestas (palomitas/tachitas)
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.answersResults.length,
              itemBuilder: (context, index) {
                final result = state.answersResults[index];
                if (result == null) return const Icon(Icons.circle_outlined, size: 20, color: Colors.grey);
                return Icon(
                  result ? Icons.check_circle : Icons.cancel,
                  size: 24,
                  color: result ? Colors.green : Colors.red,
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          // Pregunta
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                question.question,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 30),
          // Opciones
          ...List.generate(question.options.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                ),
                onPressed: () => notifier.answerQuestion(index),
                child: Text(
                  question.options[index],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildResult(QuizState state, QuizNotifier notifier) {
    final average = (state.score / state.questions.length) * 10;
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.emoji_events, size: 100, color: Colors.amber),
            const SizedBox(height: 20),
            const Text(
              '¡Juego Terminado!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Tu puntuación es de:',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            Text(
              '${state.score} / ${state.questions.length}',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            Text(
              'Promedio: ${average.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.replay),
              label: const Text('Jugar de nuevo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: () => notifier.restart(),
            ),
          ],
        ),
      ),
    );
  }
}
