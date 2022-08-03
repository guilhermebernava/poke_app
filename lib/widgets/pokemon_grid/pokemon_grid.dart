import 'package:flutter/material.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:poke_app/widgets/pokemon_item/pokemon_item.dart';
import 'package:provider/provider.dart';

class PokemonGrid extends StatelessWidget {
  final Size size;
  const PokemonGrid({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.35,
      width: double.infinity,
      child: Consumer<PokemonsProvider>(
        builder: (context, value, child) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) => PokemonItem(
            size: size,
            model: value.pokemonsSearched.isNotEmpty
                ? value.pokemonsSearched[index]
                : value.pokemons[index],
          ),
          itemCount: value.pokemonsSearched.isNotEmpty
              ? value.pokemonsSearched.length
              : value.pokemons.length,
        ),
      ),
    );
  }
}
