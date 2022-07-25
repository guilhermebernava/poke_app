import 'package:flutter/material.dart';

class PokemonTypeModel {
  final String type;
  late final Color colorType;

  PokemonTypeModel(this.type) {
    switch (type) {
      case 'FIRE':
        colorType = Colors.red;
        break;
      case 'GRASS':
        colorType = Colors.green;
        break;
      case 'NORMAL':
        colorType = Colors.grey;
        break;
      case 'FIGHTING':
        colorType = const Color(0xffD56723);
        break;
      case 'FLYING':
        colorType = Colors.lightBlue;
        break;
      case 'POISON':
        colorType = Colors.purple;
        break;
      case 'GROUND':
        colorType = const Color(0xffF7DE3F);
        break;
      case 'GHOST':
        colorType = const Color(0xff7B62A3);
        break;
      case 'ROCK':
        colorType = const Color(0xffA28C21);
        break;
      case 'BUG':
        colorType = Colors.lightGreen;
        break;
      case 'STEEL':
        colorType = Colors.blueGrey;
        break;
      case 'WATER':
        colorType = Colors.blue;
        break;
      case 'ELECTRIC':
        colorType = Colors.yellow;
        break;
      case 'PSYCHIC':
        colorType = Colors.pink;
        break;
      case 'ICE':
        colorType = Colors.lightBlueAccent;
        break;
      case 'DRAGON':
        colorType = const Color(0xff54A4CF);
        break;
      case 'DARK':
        colorType = Colors.black;
        break;
      case 'FAIRY':
        colorType = Colors.pinkAccent;
        break;
      case 'UNKWON':
        colorType = Colors.black;
        break;
      case 'SHADOW':
        colorType = Colors.black;
        break;
      default:
        colorType = Colors.black;
    }
  }
}
