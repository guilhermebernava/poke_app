import 'package:flutter/material.dart';
import '../../../../../themes/app_colors.dart';
import '../../../../../themes/text_styles.dart';

class BottomBarButton extends StatelessWidget {
  final Size size;
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const BottomBarButton({
    Key? key,
    required this.size,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: size.height * 0.0795,
        width: size.width * 0.2,
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: AppColors.blue,
            ),
            Text(
              text,
              style: TextStyles.code,
            )
          ],
        ),
      ),
    );
  }
}
