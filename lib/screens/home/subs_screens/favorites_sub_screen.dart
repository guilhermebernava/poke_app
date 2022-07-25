import 'package:flutter/material.dart';
import 'package:poke_app/themes/text_styles.dart';
import 'package:provider/provider.dart';
import '../../../providers/pokemons_provider.dart';
import '../../../widgets/pokemon_item/pokemon_item.dart';

class FavoriteSubScreen extends StatelessWidget {
  const FavoriteSubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: size.height * 0.6,
        width: double.infinity,
        child: Consumer<PokemonsProvider>(
          builder: (context, value, child) => value.favoritesPokemons.isEmpty
              ? Center(
                  child: Text(
                    'Sem favoritos por aqui',
                    textAlign: TextAlign.center,
                    style: TextStyles.homeTitle,
                  ),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) => PokemonItem(
                    size: size,
                    model: value.favoritesPokemons[index],
                  ),
                  itemCount: value.favoritesPokemons.length,
                ),
        ),
      ),
    );
  }
}
