import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';


class ProgressIndicatorBarWidget extends StatelessWidget {
  final double value;
  const ProgressIndicatorBarWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(color: AppColors.chartSecondary, valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary), value: value);
  }
}
