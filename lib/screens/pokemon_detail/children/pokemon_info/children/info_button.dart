import 'package:flutter/material.dart';
import '../../../../../themes/app_colors.dart';

class InfoButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const InfoButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 30,
        color: icon == Icons.favorite ? AppColors.red : AppColors.darkGrey,
      ),
    );
  }
}
