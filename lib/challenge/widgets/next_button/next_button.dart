import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.borderColor,
    required this.onTap,
    required this.fontColor}) : super(key: key);

  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final void Function() onTap;

  NextButton.green(String label, {Key? key, required void Function() onTap}) :
        this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.label = label,
        this.borderColor = AppColors.green,
        this.onTap = onTap;

  NextButton.white(String label, {Key? key, required void Function() onTap}) :
        this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.black,
        this.label = label,
        this.onTap = onTap,
        this.borderColor = AppColors.border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          side: MaterialStateProperty.all(BorderSide(color: borderColor)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        ),
          onPressed: onTap,
          child: Text(
            label,
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: fontColor
            ),
          ),
      ),
    );
  }
}


