import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/children/bottom_bar/children/bottom_bar_button.dart';
import '../../../../themes/app_colors.dart';

class BottomBar extends StatelessWidget {
  final Size size;

  const BottomBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.12,
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(1, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomBarButton(
              size: size,
              text: 'Home',
              icon: Icons.home_outlined,
              onTap: () {}),
          BottomBarButton(
              size: size,
              text: 'Favorites',
              icon: Icons.favorite_border_outlined,
              onTap: () {}),
          BottomBarButton(
              size: size,
              text: 'Minha Conta',
              icon: Icons.account_circle_outlined,
              onTap: () {}),
        ],
      ),
    );
  }
}
