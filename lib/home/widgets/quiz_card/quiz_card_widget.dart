import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 20,),
          Text(title, style: AppTextStyles.heading15,),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(flex: 1, child: Text(completed, style: AppTextStyles.body11,)),
              Expanded(flex: 3, child: LinearProgressIndicator(color: AppColors.chartSecondary, valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary), value: percent))
            ],
          ),
        ],
      )
    );
  }
}
