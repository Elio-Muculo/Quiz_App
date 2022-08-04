import 'package:devquiz/shared/models/questions_model.dart';
import 'dart:convert';

enum Level {
  facil, medio, dificil, perito
}

extension LevelStringExt on String {
  Level get levelParse => {
    "fácil": Level.facil,
    "médio": Level.medio,
    "difícil": Level.dificil,
    "perito": Level.perito
  }[this]!;
}

extension LevelExt on Level {
  String get parse => {
    Level.facil: "facil",
    Level.medio: "medio",
    Level.dificil: "dificil",
    Level.perito: "perito",
  }[this]!;
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

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((e) => e.toMap()).toList(),
      'questionsAnswered': questionsAnswered,
      'imagem': imagem,
      'level': level.parse
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
        title: map['title'],
        questions: List<QuestionModel>.from(map['questions']?.map((e) => QuestionModel.fromMap(e))),
        questionsAnswered: map['questionsAnswered'],
        imagem: map['imagem'],
        level: map['level'].toString().levelParse
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));


}

