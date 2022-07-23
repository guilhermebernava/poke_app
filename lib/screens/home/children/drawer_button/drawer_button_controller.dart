import 'package:flutter/material.dart';

class DrawerButtonController {
  final GlobalKey<ScaffoldState> scaffoldKey;

  DrawerButtonController(this.scaffoldKey);

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }
}
