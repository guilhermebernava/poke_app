import 'package:flutter/material.dart';
import '../themes/text_styles.dart';

class PokemonType extends StatelessWidget {
  final String type;
  final Color color;
  final Size size;

  const PokemonType({
    Key? key,
    required this.type,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: SizedBox(
        width: size.width * 0.12,
        child: Text(
          type,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: TextStyles.typeChip,
        ),
      ),
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
