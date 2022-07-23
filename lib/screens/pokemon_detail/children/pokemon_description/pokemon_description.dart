import 'package:flutter/material.dart';
import '../../../../themes/text_styles.dart';

class PokemonDescription extends StatelessWidget {
  final String text;
  final Size size;

  const PokemonDescription({
    Key? key,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descriçāo',
            style: TextStyles.type,
          ),
          Text(
            text,
            style: TextStyles.descriptionText,
          )
        ],
      ),
    );
  }
}
