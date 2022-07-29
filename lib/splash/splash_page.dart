import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.linear
        ),
        child: Center(
          child: Image.asset(
            AppImages.logo
          ),
        ),
      ),
    );
  }
}



