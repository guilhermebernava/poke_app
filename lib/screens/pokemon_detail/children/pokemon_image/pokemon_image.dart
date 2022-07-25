import 'package:flutter/material.dart';
import '../../../../themes/app_colors.dart';

class PokemonImage extends StatelessWidget {
  final Size size;
  final String image;

  const PokemonImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grey,
      width: double.infinity,
      height: size.height * 0.3,
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
