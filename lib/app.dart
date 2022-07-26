import 'package:flutter/material.dart';
import 'package:poke_app/providers/pokemons_provider.dart';
import 'package:poke_app/screens/pokemon_detail/pokemon_detail.dart';
import 'package:provider/provider.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PokemonsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Poke App',
        home: const Login(),
        routes: {
          Home.route: (context) => const Home(),
          PokemonDetail.route: (context) => const PokemonDetail(),
        },
      ),
    );
  }
}
