import 'package:devquiz/challenge/challenge_page.dart';
import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/home/home_controller.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController();

  @override
  void initState() {
    super.initState();
      controller.getQuizs();
      controller.getUser();
    controller.stateNotifier.addListener(() {
      setState(() => {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == HomeState.sucesso) {
      return Scaffold(
            appBar: AppBarWidget(user: controller.user!,),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 24.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LevelButtonWidget(label: 'Fácil'),
                      LevelButtonWidget(label: 'Médio'),
                      LevelButtonWidget(label: 'Difícil'),
                      LevelButtonWidget(label: 'Perito'),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  Expanded(
                    child: GridView.count(
                      physics: const BouncingScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      children:
                        controller.quizzes!.map((e) =>
                          QuizCardWidget(
                            onTap: () => {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ChallengePage(question: e.questions),
                                )
                              )
                            },
                            title: e.title,
                            percent: e.questionsAnswered / e.questions.length,
                            completed: "${e.questionsAnswered}/${e.questions.length}",
                          )
                        ).toList(),
                    ),
                  )
                ],
              )
            ),
      );
    } else {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen)),
          ),
        ),
      );
    }
  }
}
