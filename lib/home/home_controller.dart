import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_repository.dart';
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

  final repository = new HomeRepository();

  // State
  // var state = HomeState.empty;
  final stateNotifier =  ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.sucesso;
  }

  void getQuizs() async {
    state = HomeState.loading;

    quizzes = await repository.getQuizzes();

    state = HomeState.sucesso;
  }
}