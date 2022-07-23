import 'package:flutter/material.dart';
import 'package:poke_app/models/pokemon.dart';

class PokemonsProvider with ChangeNotifier {
  final List<PokemonModel> _pokemons = [];

  List<PokemonModel> get pokemons => [..._pokemons];

  PokemonModel pokemonByIndex(int index) => _pokemons.elementAt(index);

  PokemonModel pokemonById(int id) => _pokemons.firstWhere((_) => _.id == id);
}
