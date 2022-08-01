import 'package:devquiz/shared/models/questions_model.dart';


enum Level {
  facil, medio, dificil, perito
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String imagem;
  final Level level;


  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.imagem,
    required this.level
  });


}

