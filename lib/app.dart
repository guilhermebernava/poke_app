import 'package:flutter/material.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poke App',
      home: const Login(),
      routes: {
        Home.route: (context) => const Home(),
      },
    );
  }
}
