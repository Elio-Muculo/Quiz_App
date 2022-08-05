import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/questions_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  const QuizWidget({
    Key? key,
    required this.question
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          children: [
            Text(question.title, style: AppTextStyles.heading,),
            const SizedBox(height: 15,),
            ...question
              .answers
              .map((e) =>
                AnswerWidget(
                  title: e.title,
                  isRight: e.isRight,
                )
              )
              .toList(),
            const SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
