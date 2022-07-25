import 'package:flutter/material.dart';
import 'package:poke_app/models/pokemon_types.dart';
import '../models/pokemon.dart';

class PokemonsProvider with ChangeNotifier {
  final List<PokemonModel> _pokemons = [];
  final List<PokemonModel> _favoritesPokemons = [];
  final List<PokemonModel> _searchedPokemon = [];
  final List<PokemonTypeModel> _types = [];

  void addListPokemons(List<PokemonModel> list) {
    for (var pokemon in list) {
      if (_pokemons.contains(pokemon)) {
        continue;
      }
      _pokemons.add(pokemon);
    }
    notifyListeners();
  }

  void addListTypes(List<PokemonTypeModel> list) {
    _types.addAll(list);
    notifyListeners();
  }

  List<PokemonModel> get pokemons => [..._pokemons];
  List<PokemonModel> get favoritesPokemons => [..._favoritesPokemons];
  List<PokemonModel> get pokemonsSearched => [..._searchedPokemon];
  List<PokemonTypeModel> get types => [..._types];

  void searchedPokemons(String name) {
    if (name == '') {
      _searchedPokemon.removeWhere((element) => true);
      notifyListeners();
      return;
    }
    final list = _pokemons.where((element) => element.name == name).toList();

    if (list.isEmpty) {
      _searchedPokemon.removeWhere((element) => true);
      notifyListeners();
      return;
    }

    if (!_searchedPokemon.contains(list[0])) {
      _searchedPokemon.add(list[0]);
      notifyListeners();
    }
  }

  PokemonModel pokemonByIndex(int index) {
    if (_searchedPokemon.length > 1) {
      return _searchedPokemon.elementAt(index);
    }
    return _pokemons.elementAt(index);
  }

  PokemonModel pokemonById(int id) => _pokemons.firstWhere((_) => _.id == id);

  void favoritePokemonById(int id) {
    final pokemon = _pokemons.where((element) => element.id == id).first;
    final pokemonFavorited = pokemon.favorited;
    pokemon.favorited = !pokemonFavorited;
    if (_favoritesPokemons.contains(pokemon)) {
      _favoritesPokemons.removeWhere((element) => element.id == id);
      notifyListeners();
      return;
    }
    _favoritesPokemons.add(pokemon);
    notifyListeners();
  }
}
