import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/pokemons_provider.dart';

class PokemonInfoController {
  late PokemonsProvider provider;

  PokemonInfoController(BuildContext context) {
    provider = Provider.of<PokemonsProvider>(
      context,
      listen: false,
    );
  }
  void favorite(int id) {
    provider.favoritePokemonById(id);
  }

  void share() {
    //SEND THIS DATA FOR ORTHER APP
  }
}
