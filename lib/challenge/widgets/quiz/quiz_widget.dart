import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(title, style: AppTextStyles.heading,),
          const SizedBox(height: 24.0,),
          const AnswerWidget(isSelect: true, isRight: false, title: "Possibilta a criação de aplicatiovos compilados nativamente"),
          const AnswerWidget(title: "Possibilta a criação de aplicatiovos compilados nativamente"),
          const AnswerWidget(isRight: true, isSelect: true, title: "Possibilta a criação de aplicatiovos compilados nativamente"),
          const AnswerWidget(title: "Possibilta a criação de aplicatiovos compilados nativamente"),
        ],
      ),
    );
  }
}
