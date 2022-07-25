import 'package:flutter/material.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:poke_app/themes/text_styles.dart';
import 'package:poke_app/widgets/select_button/select_button.dart';
import 'package:provider/provider.dart';

class SelectButtonList extends StatelessWidget {
  final Size size;

  const SelectButtonList({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Tipos',
            style: TextStyles.type,
          ),
        ),
        Consumer<PokemonsProvider>(
          builder: (context, value, child) => SizedBox(
            height: size.height * 0.05,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SelectButton(
                text: value.types[index].type,
                color: value.types[index].colorType,
                size: size,
              ),
              itemCount: value.types.length,
            ),
          ),
        )
      ],
    );
  }
}
