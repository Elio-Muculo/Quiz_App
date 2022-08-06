import 'package:devquiz/challenge/challenge_controller.dart';
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
  final controller = new ChallengeController();
  final pageController = new PageController();

  void initState() {
    pageController.addListener(() {
      controller.currentPage = pageController.page!.toInt() + 1;
    });
    super.initState();
  }

  void nextPage() {
    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(top: true, child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const BackButton(),
            ValueListenableBuilder<int>(
              valueListenable: controller.currentPageNotifier,
              builder: (context, value, _) =>
                  QuestionIndicatorWidget(
                currentPage: value,
                size: widget.question.length,
              ),
            ),
          ],
        )),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children:widget.question.map((e) => QuizWidget(question: e, onChange: nextPage,)).toList()
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child:
              ValueListenableBuilder<int>(
                valueListenable: controller.currentPageNotifier,
                builder: (context, value, _) =>
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: NextButton.white('Pular', onTap: () => {
                      nextPage()
                    },)),
                    if (value == widget.question.length )
                    const SizedBox(width: 7,),
                    if (value == widget.question.length )
                     Expanded(child: NextButton.green('Confirmar', onTap: () => { 
                       Navigator.pop(context)
                     },))
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
