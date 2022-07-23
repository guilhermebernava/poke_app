import 'package:flutter/material.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/text_styles.dart';

class ProgressBar extends StatelessWidget {
  final Size size;
  final String text;
  final Color color;
  final double value;

  const ProgressBar({
    Key? key,
    required this.size,
    required this.text,
    required this.color,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyles.progressBarText,
          ),
          SizedBox(
            width: size.width * 0.6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: LinearProgressIndicator(
                backgroundColor: AppColors.darkGrey,
                value: value,
                color: color,
                minHeight: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
