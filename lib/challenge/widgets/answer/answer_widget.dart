import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelect;
  const AnswerWidget({
    Key? key,
    required this.title,
    this.isRight = false,
    this.isSelect = false,
  }) : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight =>
      isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isSelect ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: isSelect ? _selectedBorderRight : AppColors.border))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 5, child: Text(title, style: isSelect ? _selectedTextStyleRight : AppTextStyles.body,)),
            Container(
              decoration: BoxDecoration(
                  color: isSelect ? _selectedColorRight : AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(BorderSide(color: isSelect ? _selectedBorderRight : AppColors.border))
              ),
              width: 24,
              height: 24,
              child: isSelect ?  Icon(_selectedIconRight, size: 17, color: Colors.white,) : Container(color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
