import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/text_styles.dart';

class TextsLogin extends Padding {
  TextsLogin({Key? key, required Size size})
      : super(
          key: key,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.08),
          child: Column(
            children: [
              Text.rich(
                TextSpan(
                  text: 'Explore o mundo \ndos',
                  style: TextStyles.loginTitle(AppColors.blue),
                  children: [
                    TextSpan(
                      text: ' Pokémons',
                      style: TextStyles.loginTitle(AppColors.red),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Descubra todas as espécies de Pokémons',
                style: TextStyles.loginText,
              ),
            ],
          ),
        );
}
