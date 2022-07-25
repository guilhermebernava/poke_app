import 'dart:convert';
import 'package:poke_app/api/api.dart';
import 'package:poke_app/models/pokemon.dart';
import 'package:poke_app/models/pokemon_types.dart';

class PokemonEndpoints {
  static const getPokemonById = '/pokemon/';
  static const types = '/type/';

  final api = Api();

  Future<List<PokemonModel>> getAllPokemons() async {
    final List<PokemonModel> pokemons = [];
    for (int id = 1; id <= 151; id++) {
      var pokemon = await getPokemon(id.toString());
      pokemons.add(pokemon);
    }

    return pokemons;
  }

  Future<PokemonModel> getPokemon(String id) async {
    try {
      final response = await api.get(getPokemonById + id);
      final Map<String, dynamic> map = jsonDecode(response.body);

      final pokemon = PokemonModel.fromMap(map);

      return pokemon;
    } catch (e) {
      return PokemonModel(
        id: 0,
        name: 'error',
        imageUrl: '',
        types: [],
        status: {},
        code: '',
      );
    }
  }

  Future<List<PokemonTypeModel>> getAllTypes() async {
    try {
      final response = await api.get(types);

      final Map<String, dynamic> body = jsonDecode(response.body);
      final results = body['results'];
      final List<PokemonTypeModel> typesList = [];

      for (var type in results) {
        typesList.add(PokemonTypeModel(type['name'].toString().toUpperCase()));
      }

      return typesList;
    } catch (e) {
      return [];
    }
  }
}
