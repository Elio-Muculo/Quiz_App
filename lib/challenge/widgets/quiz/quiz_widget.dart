import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/questions_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final void Function() onChange;
  const QuizWidget({
    Key? key,
    required this.onChange,
    required this.question
  }) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;
  List<AnswerModel> get questions => widget.question.answers;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Text(widget.question.title, style: AppTextStyles.heading,),
            const SizedBox(height: 15,),
            for (var i = 0; i < questions.length; i++)
              AnswerWidget(
                disable: indexSelected != -1,
                isSelect: i == indexSelected,
                answer: questions[i],
                onTap: () {
                  indexSelected = i;
                  setState(() {});
                  Future.delayed(Duration(seconds: 1)).then((value) => widget.onChange());
                },
              ),
            const SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
