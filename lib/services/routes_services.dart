import 'package:flutter/material.dart';

class RoutesServices {
  static void redirectToWithNoReturn(BuildContext context, String route) {
    Navigator.pushReplacementNamed(context, route);
  }
}
