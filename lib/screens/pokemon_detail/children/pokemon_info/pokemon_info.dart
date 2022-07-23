import 'package:flutter/material.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_info/children/info_button.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_info/pokemon_info_controller.dart';
import '../../../../themes/text_styles.dart';
import '../../../../widgets/pokemon_type.dart';

class PokemonInfo extends StatelessWidget {
  final Size size;
  final String name;
  final String code;
  final String type;
  final Color typeColor;

  const PokemonInfo({
    Key? key,
    required this.size,
    required this.name,
    required this.code,
    required this.type,
    required this.typeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PokemonInfoController();

    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyles.homeTitle,
              ),
              Text(
                'Cod: $code',
                style: TextStyles.homeText,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  InfoButton(
                    onTap: () => controller.favorite(),
                    icon: Icons.favorite_border_outlined,
                  ),
                  InfoButton(
                    onTap: () => controller.favorite(),
                    icon: Icons.share_outlined,
                  ),
                ],
              ),
              PokemonType(
                type: type,
                color: typeColor,
                size: size,
              )
            ],
          )
        ],
      ),
    );
  }
}
