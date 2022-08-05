import 'package:devquiz/challenge/widgets/next_button/next_button.dart';
import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';


class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(top: true, child: Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: QuestionIndicatorWidget(),
        )),
      ),
      body: const QuizWidget(title: 'O que faz flutter faz na sua totalidade'),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: NextButton.white('Fácil', onTap: () => {  },)),
              const SizedBox(width: 7,),
              Expanded(child: NextButton.green('Confirmar', onTap: () => {  },))
            ],
          ),
        ),
      ),
    );
  }
}
