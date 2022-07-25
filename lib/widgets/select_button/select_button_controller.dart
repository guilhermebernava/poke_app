import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/pokemons_provider.dart';

class SelectButtonController {
  late PokemonsProvider provider;

  SelectButtonController(BuildContext context) {
    provider = Provider.of<PokemonsProvider>(
      context,
      listen: false,
    );
  }

  void onSelected(String value) {
    provider.addFilter(value);
  }
}
