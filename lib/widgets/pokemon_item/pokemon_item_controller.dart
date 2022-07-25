import 'package:flutter/material.dart';

import '../../screens/pokemon_detail/pokemon_detail.dart';

class PokemonItemController {
  void redirect(BuildContext context, int id) {
    Navigator.pushNamed(context, PokemonDetail.route, arguments: id);
  }
}
