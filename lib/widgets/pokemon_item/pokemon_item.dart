import 'package:flutter/material.dart';
import 'package:poke_app/models/pokemon.dart';
import 'package:poke_app/widgets/pokemon_type.dart';
import '../../themes/app_colors.dart';
import '../../themes/text_styles.dart';
import 'pokemon_item_controller.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel model;
  final Size size;
  const PokemonItem({
    Key? key,
    required this.size,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PokemonItemController();

    return GestureDetector(
      onTap: () => controller.redirect(context, model.id),
      child: Card(
        child: Container(
          width: size.width * 0.42,
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
                        width: size.width * 0.24,
                        child: Text(
                          model.name,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyles.type,
                        ),
                      ),
                    ),
                    PokemonType(
                      type: model.types[0].type,
                      color: model.types[0].colorType,
                      size: size,
                    ),
                    Text(
                      '#${model.code}',
                      textAlign: TextAlign.start,
                      style: TextStyles.code,
                    )
                  ],
                ),
                Image.network(
                  model.imageUrl,
                  fit: BoxFit.cover,
                  width: size.width * 0.15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
