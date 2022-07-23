import 'package:flutter/material.dart';
import 'package:poke_app/themes/app_colors.dart';
import 'package:poke_app/themes/app_images.dart';
import 'package:poke_app/widgets/pokemon_item/pokemon_item.dart';

class PokemonGrid extends StatelessWidget {
  final Size size;
  const PokemonGrid({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.37,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (context, index) => PokemonItem(
          size: size,
          image: AppImages.iversaur,
          name: 'Bulbasaur',
          type: 'Planta',
          code: '#001',
          color: AppColors.gren,
        ),
        itemCount: 8,
      ),
    );
  }
}
