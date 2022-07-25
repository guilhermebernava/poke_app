import 'package:flutter/material.dart';
import 'package:poke_app/api/pokemon_endpoints.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:provider/provider.dart';

class HomeController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final pokemonEndpoins = PokemonEndpoints();
  late PokemonsProvider provider;

  HomeController(BuildContext context) {
    provider = Provider.of<PokemonsProvider>(
      context,
      listen: false,
    );
  }

  void logout(BuildContext context) =>
      Navigator.of(context).pushReplacementNamed('/');

  Future loadPokemons() async {
    if (provider.pokemons.isEmpty || provider.types.isEmpty) {
      final list = await pokemonEndpoins.getAllPokemons();
      final types = await pokemonEndpoins.getAllTypes();
      if (provider.pokemons.length != list.length) {
        provider.addListPokemons(list);
      }
      if (provider.types.length != types.length) {
        provider.addListTypes(types);
      }
    }

    return;
  }
}
