import 'package:flutter/material.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_description/pokemon_description.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_image/pokemon_image.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_info/pokemon_info.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_status/pokemon_status.dart';
import 'package:poke_app/widgets/app_bar_home.dart';
import 'package:provider/provider.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({Key? key}) : super(key: key);

  static const route = '/pokemon-detail';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final id = ModalRoute.of(context)?.settings.arguments as int;
    final modal = Provider.of<PokemonsProvider>(context).pokemonById(id);

    return Scaffold(
      appBar: AppBarHome(),
      body: SizedBox(
        height: size.height,
        child: ListView(
          children: [
            PokemonImage(
              size: size,
              image: modal.imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PokemonInfo(
                    size: size,
                    name: modal.name,
                    code: '#${modal.code}',
                    type: modal.types[0].type,
                    typeColor: modal.types[0].colorType,
                    id: modal.id,
                  ),
                  PokemonDescription(
                    text: 'empty due API',
                    size: size,
                  ),
                  PokemonStatus(
                    size: size,
                    attackValue: modal.status['attack']! / 100,
                    healthValue: modal.status['hp']! / 100,
                    deffenseValue: modal.status['defense']! / 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
