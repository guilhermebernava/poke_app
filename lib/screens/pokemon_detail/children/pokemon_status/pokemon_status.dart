import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../progress_bar/progress_bar.dart';

class PokemonStatus extends StatelessWidget {
  final Size size;
  final double attackValue;
  final double healthValue;
  final double deffenseValue;

  const PokemonStatus({
    Key? key,
    required this.size,
    required this.attackValue,
    required this.healthValue,
    required this.deffenseValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        ProgressBar(
          size: size,
          text: 'Vida',
          color: AppColors.orange,
          value: healthValue,
        ),
        ProgressBar(
          size: size,
          text: 'Defesa',
          color: AppColors.gren,
          value: deffenseValue,
        ),
        ProgressBar(
          size: size,
          text: 'Ataque',
          color: AppColors.red,
          value: attackValue,
        ),
      ],
    );
  }
}
