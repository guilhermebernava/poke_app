import 'package:flutter/material.dart';
import '../../../../../themes/app_colors.dart';
import '../../../../../themes/text_styles.dart';

class BottomBarButton extends StatelessWidget {
  final Size size;
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final bool selected;

  const BottomBarButton({
    Key? key,
    required this.size,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: size.height * 0.0795,
        width: size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: AppColors.blue,
            ),
            Text(
              text,
              style: TextStyles.code,
            ),
            selected
                ? Container(
                    width: size.width * 0.07,
                    margin: const EdgeInsets.only(top: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.blue,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
