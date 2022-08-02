import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final UserModel user;
  const AppBarWidget({
    Key? key,
    required this.user
  }) : super(
      key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        child: Stack(
          children: [
            Container(
              height: 161,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: AppGradients.linear
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Olá ',
                      style: AppTextStyles.title,
                      children: [
                        TextSpan(
                          text: user.name,
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
                            image: AssetImage(user.url),
                        )
                    ),
                  ),
                ],
              ),
            ),
             const Align(
               alignment: Alignment(0.0, 1.0),
                child: ScoreCardWIdget(),
            )
          ],
        ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(250);
}
