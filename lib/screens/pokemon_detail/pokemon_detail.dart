import 'package:flutter/material.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_description/pokemon_description.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_image/pokemon_image.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_info/pokemon_info.dart';
import 'package:poke_app/screens/pokemon_detail/children/pokemon_status/pokemon_status.dart';
import 'package:poke_app/themes/app_images.dart';
import 'package:poke_app/widgets/app_bar_home.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({Key? key}) : super(key: key);

  static const route = '/pokemon-detail';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBarHome(),
      body: SizedBox(
        height: size.height,
        child: ListView(
          children: [
            PokemonImage(
              size: size,
              image: AppImages.iversaur,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PokemonInfo(
                    size: size,
                    name: 'Bulbasaur',
                    code: '#001',
                    type: 'Planta',
                    typeColor: Colors.green,
                  ),
                  PokemonDescription(
                    text:
                        'Charmeleon destrói seus oponentes sem pena com suas garras afiadas. Torna-se agressivo quando encontra um oponente forte e então a chama na ponta da sua cauda queima intensamente em uma cor azulada.',
                    size: size,
                  ),
                  PokemonStatus(
                    size: size,
                    attackValue: 0.4,
                    healthValue: 0.55,
                    deffenseValue: 0.33,
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
