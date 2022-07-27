import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(
      key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 200.0,
        decoration: const BoxDecoration(
            gradient: AppGradients.linear
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Olá',
                  style: AppTextStyles.title,
                  children: [
                    TextSpan(
                      text: ', Elliot',
                      style: AppTextStyles.titleBold
                    )
                  ]
                ),
              ),
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(AppImages.elio),
                        fit: BoxFit.cover
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(250);
}
