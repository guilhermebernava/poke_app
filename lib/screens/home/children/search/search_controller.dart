import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/pokemons_provider.dart';

class SearchController {
  final textEditController = TextEditingController();
  late PokemonsProvider provider;

  SearchController(BuildContext context) {
    provider = Provider.of<PokemonsProvider>(
      context,
      listen: false,
    );
  }

  void onPressed(BuildContext context) {
    provider.searchedPokemons(textEditController.text);
    textEditController.clear();
  }
}
