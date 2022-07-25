import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/children/bottom_bar/children/bottom_bar_button.dart';
import '../../../../themes/app_colors.dart';

class BottomBar extends StatelessWidget {
  final Size size;
  final int pageIndex;
  final VoidCallback home;
  final VoidCallback favorites;
  final VoidCallback account;

  const BottomBar({
    Key? key,
    required this.size,
    required this.home,
    required this.favorites,
    required this.account,
    required this.pageIndex,
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
            selected: pageIndex == 0,
            size: size,
            text: 'Home',
            icon: pageIndex != 0 ? Icons.home_outlined : Icons.home,
            onTap: home,
          ),
          BottomBarButton(
            selected: pageIndex == 1,
            size: size,
            text: 'Favorites',
            icon: pageIndex != 1
                ? Icons.favorite_border_outlined
                : Icons.favorite,
            onTap: favorites,
          ),
          BottomBarButton(
            selected: pageIndex == 2,
            size: size,
            text: 'Minha Conta',
            icon: pageIndex != 2
                ? Icons.account_circle_outlined
                : Icons.account_circle,
            onTap: account,
          ),
        ],
      ),
    );
  }
}
