import 'package:devquiz/shared/models/answer_model.dart';
import 'dart:convert';


class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers
  }) : assert (answers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'answers': answers.map((e) => e.toMap()).toList()
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
        title: map['title'],
        answers: List<AnswerModel>.from(map['answers'].map((e) => AnswerModel.fromMap(e))));
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source));
}

