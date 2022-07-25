import 'package:flutter/material.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:poke_app/themes/app_colors.dart';
import 'package:poke_app/widgets/select_button/select_button_controller.dart';
import 'package:provider/provider.dart';
import '../../themes/text_styles.dart';

class SelectButton extends StatelessWidget {
  final String text;
  final Color color;
  final Size size;

  const SelectButton({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SelectButtonController(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: FilterChip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        label: SizedBox(
          width: size.width * 0.32,
          height: size.height * 0.07,
          child: Consumer<PokemonsProvider>(
            builder: (context, value, child) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyles.chip,
                  textAlign: TextAlign.center,
                ),
                value.filter.contains(text)
                    ? const SizedBox(
                        width: 10,
                      )
                    : Container(
                        width: 0,
                      ),
                value.filter.contains(text)
                    ? const Icon(
                        Icons.check_circle_rounded,
                        color: AppColors.white,
                      )
                    : Container(
                        width: 0,
                      ),
              ],
            ),
          ),
        ),
        backgroundColor: color,
        onSelected: (bool value) => controller.onSelected(text),
      ),
    );
  }
}
