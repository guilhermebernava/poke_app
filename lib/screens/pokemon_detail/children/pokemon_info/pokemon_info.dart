import 'package:flutter/material.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_info/children/info_button.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_info/pokemon_info_controller.dart';
import 'package:provider/provider.dart';
import '../../../../themes/text_styles.dart';
import '../../../../widgets/pokemon_type.dart';

class PokemonInfo extends StatelessWidget {
  final Size size;
  final int id;
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
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PokemonInfoController(context);

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
                  Consumer<PokemonsProvider>(
                    builder: (context, value, child) => InfoButton(
                      onTap: () => controller.favorite(id),
                      icon: value.pokemonById(id).favorited
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                    ),
                  ),
                  InfoButton(
                    onTap: () => controller.share(),
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
