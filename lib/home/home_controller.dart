import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/questions_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {

  // User
  UserModel? user = null;

  // Quiz
  List<QuizModel>? quizzes = null;

  // State
  // var state = HomeState.empty;
  final stateNotifier =  ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(const Duration(seconds: 3));
    user = UserModel(name: "Eliot", url: AppImages.git, score: 0);
    state = HomeState.sucesso;
  }

  void getQuizs() async {
    state = HomeState.loading;
    await Future.delayed(const Duration(seconds: 3));
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          questions: [
            QuestionModel(
                title: "O que está curtido o flutter",
                answers: [
                  AnswerModel(title: "Estou curtido"),
                  AnswerModel(title: "Estou adorando"),
                  AnswerModel(title: "Amando o flutter", isRight: true),
                  AnswerModel(title: "Muito top o nlw 5"),
                ])
          ],
          imagem: AppImages.blocks,
          level: Level.facil,
          questionsAnswered: 0
      ),
      QuizModel(
          title: "NLW 6 Flutter",
          questions: [
            QuestionModel(
                title: "O que está curtido o flutter",
                answers: [
                  AnswerModel(title: "Estou curtido"),
                  AnswerModel(title: "Estou adorando"),
                  AnswerModel(title: "Amando o flutter", isRight: true),
                  AnswerModel(title: "Muito top o nlw 5"),
                ]
            ),
            QuestionModel(
                title: "O que está curtido o flutter",
                answers: [
                  AnswerModel(title: "Estou curtido"),
                  AnswerModel(title: "Estou adorando"),
                  AnswerModel(title: "Amando o flutter", isRight: true),
                  AnswerModel(title: "Muito top o nlw 5"),
                ]
            ),
            QuestionModel(
                title: "O que está curtido o flutter",
                answers: [
                  AnswerModel(title: "Estou curtido"),
                  AnswerModel(title: "Estou adorando"),
                  AnswerModel(title: "Amando o flutter", isRight: true),
                  AnswerModel(title: "Muito top o nlw 5"),
                ]
            ),
            QuestionModel(
                title: "O que está curtido o flutter",
                answers: [
                  AnswerModel(title: "Estou curtido"),
                  AnswerModel(title: "Estou adorando"),
                  AnswerModel(title: "Amando o flutter", isRight: true),
                  AnswerModel(title: "Muito top o nlw 5"),
                ]
            )
          ],
          imagem: AppImages.blocks,
          level: Level.facil,
          questionsAnswered: 3
      ),
      QuizModel(
          title: "NLW 7 Flutter",
          questions: [
            QuestionModel(
                title: "O que está curtido o flutter",
                answers: [
                  AnswerModel(title: "Estou curtido"),
                  AnswerModel(title: "Estou adorando"),
                  AnswerModel(title: "Amando o flutter", isRight: true),
                  AnswerModel(title: "Muito top o nlw 5"),
                ])
          ],
          imagem: AppImages.blocks,
          level: Level.facil,
          questionsAnswered: 0
      ),
    ];

    state = HomeState.sucesso;
  }
}