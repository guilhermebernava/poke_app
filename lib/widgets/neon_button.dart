import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../themes/app_colors.dart';
import '../themes/text_styles.dart';

class NeonButton extends StatelessWidget {
  final Size size;
  final VoidCallback onTap;
  final String text;
  final IconData? leadingIcon;
  final bool isInvertedIcon;

  const NeonButton({
    Key? key,
    required this.size,
    required this.onTap,
    required this.text,
    this.leadingIcon,
    this.isInvertedIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: size.width * 0.65,
        height: size.height * 0.062,
        decoration: BoxDecoration(
          color: AppColors.red,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: AppColors.red,
              blurRadius: 12,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leadingIcon == null
                ? Container()
                : SizedBox(
                    width: size.width * 0.12,
                  ),
            Flexible(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyles.loginButton,
              ),
            ),
            leadingIcon == null
                ? Container()
                : Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: isInvertedIcon
                          ? Matrix4.rotationY(math.pi)
                          : Matrix4.identity(),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: AppColors.white,
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
