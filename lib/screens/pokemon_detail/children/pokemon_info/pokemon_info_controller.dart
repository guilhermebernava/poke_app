import 'package:flutter/material.dart';
import 'package:poke_app/services/snack_bar_services.dart';
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
  void favorite(int id, BuildContext context, bool favorited) {
    provider.favoritePokemonById(id);

    if (!favorited) {
      SnackbarServices.showSnackbar(context, 'Adicionado aos favoritos!');
      return;
    }
    SnackbarServices.showSnackbar(context, 'Removido dos favoritos!');
  }

  void share() {
    //SEND THIS DATA FOR ORTHER APP
  }
}
