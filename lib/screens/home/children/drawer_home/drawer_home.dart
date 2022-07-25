import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/home_controller.dart';

import '../../../../themes/app_colors.dart';
import '../../../../themes/text_styles.dart';

class DrawerHome extends StatelessWidget {
  final Size size;
  final HomeController controller;
  const DrawerHome({
    Key? key,
    required this.size,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.2,
            color: AppColors.blue,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Olá, o que gostaride fazer hoje?',
                  style: TextStyles.drawerTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.1),
            child: InkWell(
                onTap: () => controller.logout(context),
                child: SizedBox(
                  width: size.width * 0.36,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.logout,
                        size: 60,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sair',
                        style: TextStyles.loading,
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
