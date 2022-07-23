import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/children/drawer_button/drawer_button_controller.dart';

class DrawerButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const DrawerButton({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = DrawerButtonController(scaffoldKey);
    return IconButton(
      onPressed: () => controller.openDrawer(),
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    );
  }
}
