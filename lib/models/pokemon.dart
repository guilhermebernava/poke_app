import 'package:poke_app/models/pokemon_status.dart';

class PokemonModel {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final String code;
  final List<PokemonStatusModel> status;

  PokemonModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.status,
    required this.code,
  });
}
