import 'dart:convert';
import 'pokemon_types.dart';

class PokemonModel {
  final int id;
  final String name;
  final String imageUrl;
  final List<PokemonTypeModel> types;
  final String code;
  final Map<String, dynamic> status;
  bool favorited;

  PokemonModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.status,
    required this.code,
    this.favorited = false,
  });

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    final listOfTypes = map['types'];
    final listOfStats = map['stats'];
    final listOfSprites = map['sprites'];
    final image = listOfSprites['front_default'];
    List<PokemonTypeModel> types = [];
    Map<String, dynamic> stats = {};
    for (var stat in listOfStats) {
      stats.addAll({stat['stat']['name']: stat['base_stat']});
    }
    for (var type in listOfTypes) {
      types
          .add(PokemonTypeModel(type['type']['name'].toString().toUpperCase()));
    }

    return PokemonModel(
      id: map['id'],
      name: map['name'].toString().toUpperCase(),
      code: map['id'].toString(),
      imageUrl: image,
      status: stats,
      types: types,
    );
  }

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));
}
