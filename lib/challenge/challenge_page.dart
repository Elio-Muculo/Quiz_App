import 'package:devquiz/challenge/widgets/next_button/next_button.dart';
import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:devquiz/shared/models/questions_model.dart';
import 'package:flutter/material.dart';


class ChallengePage extends StatefulWidget {
  final List<QuestionModel> question;
  const ChallengePage({Key? key, required this.question}) : super(key: key);

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(top: true, child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BackButton(

            ),
            QuestionIndicatorWidget(),
          ],
        )),
      ),
      body: QuizWidget(question: widget.question[0]),
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
