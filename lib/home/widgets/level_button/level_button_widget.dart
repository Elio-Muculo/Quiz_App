import 'dart:ui';
import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({
    Key? key,
    required this.label,

  }) : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)) ,super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "textColor": AppColors.levelButtonTextFacil
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "textColor": AppColors.levelButtonTextMedio
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "textColor": AppColors.levelButtonTextDificil
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "textColor": AppColors.levelButtonTextPerito
    }
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['textColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.levelButtonFacil,
        border: Border.fromBorderSide(BorderSide(
            color: borderColor
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 6),
        child: Text(label, style: GoogleFonts.notoSans(
          color: fontColor,
          fontSize: 13,
        ),),
      ),
    );
  }
}
