import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:municipios_app/models/municipio.dart';

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      question: json['question'] ?? '',
      options: List<String>.from(json['options'] ?? []),
      correctAnswerIndex: json['correctAnswerIndex'] ?? 0,
    );
  }
}

class QuizState {
  final List<QuizQuestion> questions;
  final int currentQuestionIndex;
  final int score;
  final bool isLoading;
  final bool isFinished;
  final String? error;
  final List<bool?> answersResults; // true = correct, false = incorrect, null = not answered

  QuizState({
    this.questions = const [],
    this.currentQuestionIndex = 0,
    this.score = 0,
    this.isLoading = false,
    this.isFinished = false,
    this.error,
    this.answersResults = const [],
  });

  QuizState copyWith({
    List<QuizQuestion>? questions,
    int? currentQuestionIndex,
    int? score,
    bool? isLoading,
    bool? isFinished,
    String? error,
    List<bool?>? answersResults,
  }) {
    return QuizState(
      questions: questions ?? this.questions,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      score: score ?? this.score,
      isLoading: isLoading ?? this.isLoading,
      isFinished: isFinished ?? this.isFinished,
      error: error,
      answersResults: answersResults ?? this.answersResults,
    );
  }
}

class QuizNotifier extends StateNotifier<QuizState> {
  final Municipio municipio;
  final String _apiKey = 'AIzaSyCQ5DZV-oqEfQ3TGHYFnxoU2sWoy3p-2mM';

  QuizNotifier(this.municipio) : super(QuizState()) {
    generateQuiz();
  }

  Future<void> generateQuiz() async {
    state = state.copyWith(isLoading: true, error: null);

    final model = GenerativeModel(
      model: 'gemini-flash-latest',
      apiKey: _apiKey,
    );

    final prompt = '''
Genera un cuestionario de 10 preguntas de opción múltiple sobre el municipio de ${municipio.nombre}, Tamaulipas, basándote en la siguiente información:

${municipio.descripcionLarga}

Reglas:
1. Devuelve SOLO un objeto JSON con una lista llamada "questions".
2. Cada pregunta debe tener: "question" (el texto de la pregunta), "options" (una lista de 4 opciones) y "correctAnswerIndex" (índice de la respuesta correcta de 0 a 3).
3. Las preguntas deben ser variadas (historia, geografía, cultura, datos demográficos).
4. El formato debe ser exactamente este:
{
  "questions": [
    {
      "question": "¿...?",
      "options": ["a", "b", "c", "d"],
      "correctAnswerIndex": 0
    }
  ]
}
''';

    try {
      final response = await model.generateContent([Content.text(prompt)]);
      final text = response.text;
      if (text == null) throw 'No se pudo generar el quiz';

      // Limpiar el texto en caso de que Gemini añada ```json ... ```
      final cleanJson = text.replaceAll('```json', '').replaceAll('```', '').trim();
      final data = jsonDecode(cleanJson);
      final List questionsData = data['questions'];
      
      final questions = questionsData.map((q) => QuizQuestion.fromJson(q)).toList();

      state = state.copyWith(
        questions: questions,
        isLoading: false,
        answersResults: List.filled(questions.length, null),
      );
    } catch (e) {
      print('Quiz Error: $e');
      state = state.copyWith(
        isLoading: false,
        error: 'Error al generar el minijuego. Inténtalo de nuevo.',
      );
    }
  }

  void answerQuestion(int optionIndex) {
    if (state.isFinished) return;

    final currentQuestion = state.questions[state.currentQuestionIndex];
    final isCorrect = optionIndex == currentQuestion.correctAnswerIndex;
    
    final newAnswersResults = List<bool?>.from(state.answersResults);
    newAnswersResults[state.currentQuestionIndex] = isCorrect;

    final newScore = isCorrect ? state.score + 1 : state.score;
    final nextIndex = state.currentQuestionIndex + 1;
    final isFinished = nextIndex >= state.questions.length;

    state = state.copyWith(
      score: newScore,
      currentQuestionIndex: isFinished ? state.currentQuestionIndex : nextIndex,
      isFinished: isFinished,
      answersResults: newAnswersResults,
    );
  }

  void restart() {
    state = QuizState();
    generateQuiz();
  }
}

final quizProvider = StateNotifierProvider.family<QuizNotifier, QuizState, Municipio>((ref, municipio) {
  return QuizNotifier(municipio);
});
