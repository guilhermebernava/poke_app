import 'package:flutter/material.dart';
import 'package:poke_app/themes/app_colors.dart';
import 'package:poke_app/themes/text_styles.dart';
import 'package:poke_app/widgets/select_button/select_button.dart';

class SelectButtonList extends StatelessWidget {
  final Size size;
  const SelectButtonList({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tipos',
          style: TextStyles.type,
        ),
        SizedBox(
          height: size.height * 0.05,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => SelectButton(
              text: 'Fogo',
              color: AppColors.red,
              size: size,
            ),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
