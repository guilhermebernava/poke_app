import 'package:flutter/material.dart';
import 'package:poke_app/widgets/select_button/select_button_controller.dart';
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
    final controller = SelectButtonController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: FilterChip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        label: SizedBox(
          width: size.width * 0.2,
          child: Text(
            text,
            style: TextStyles.chip,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: color,
        onSelected: (bool value) => controller.onSelected(value),
      ),
    );
  }
}
