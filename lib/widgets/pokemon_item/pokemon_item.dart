import 'package:flutter/material.dart';
import 'package:poke_app/widgets/pokemon_type.dart';
import '../../themes/app_colors.dart';
import '../../themes/text_styles.dart';
import 'pokemon_item_controller.dart';

class PokemonItem extends StatelessWidget {
  final Size size;
  final String image;
  final String name;
  final String type;
  final String code;
  final Color color;

  const PokemonItem({
    Key? key,
    required this.size,
    required this.image,
    required this.name,
    required this.type,
    required this.code,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PokemonItemController();

    return GestureDetector(
      onTap: () => controller.redirect(context),
      child: Card(
        child: Container(
          width: size.width * 0.47,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: size.width * 0.2,
                        child: Text(
                          name,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyles.type,
                        ),
                      ),
                    ),
                    PokemonType(
                      type: type,
                      color: color,
                      size: size,
                    ),
                    Text(
                      code,
                      textAlign: TextAlign.center,
                      style: TextStyles.code,
                    )
                  ],
                ),
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: size.width * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
