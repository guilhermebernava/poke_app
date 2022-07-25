import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/children/drawer_button/drawer_button.dart';
import 'package:poke_app/screens/home/children/drawer_home/drawer_home.dart';
import 'package:poke_app/screens/home/home_controller.dart';
import 'package:poke_app/screens/home/subs_screens/account.dart';
import 'package:poke_app/screens/home/subs_screens/favorites_sub_screen.dart';
import 'package:poke_app/screens/home/subs_screens/home_sub_screen.dart';
import 'package:poke_app/widgets/app_bar_home.dart';
import 'children/bottom_bar/bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const route = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages = [
    const HomeSubScreen(),
    const FavoriteSubScreen(),
    const Account()
  ];

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController(context);

    return Scaffold(
      key: controller.scaffoldKey,
      drawer: DrawerHome(
        controller: controller,
        size: size,
      ),
      appBar: AppBarHome(
        leading: DrawerButton(
          scaffoldKey: controller.scaffoldKey,
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomBar(
        pageIndex: pageIndex,
        size: size,
        home: () => setState(() {
          pageIndex = 0;
        }),
        account: () => setState(() {
          pageIndex = 2;
        }),
        favorites: () => setState(() {
          pageIndex = 1;
        }),
      ),
    );
  }
}
