import 'package:flutter/material.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_images.dart';
import '../../../../themes/text_styles.dart';
import '../search/search.dart';

class SearchCard extends StatelessWidget {
  final Size size;

  const SearchCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightRose,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Pokedéx',
                  style: TextStyles.homeTitle,
                ),
                Text(
                  'Todas as espécies de pokemons \nestão esperando por você!',
                  style: TextStyles.homeText,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10,
                  ),
                  child: Search(
                    size: size,
                  ),
                )
              ],
            ),
            Image.asset(AppImages.sitPikachu),
          ],
        ),
      ),
    );
  }
}
