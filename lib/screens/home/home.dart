import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/children/bottom_bar/bottom_bar.dart';
import 'package:poke_app/screens/home/children/drawer_button/drawer_button.dart';
import 'package:poke_app/screens/home/children/search_card/search_card.dart';
import 'package:poke_app/screens/home/home_controller.dart';
import 'package:poke_app/themes/text_styles.dart';
import 'package:poke_app/widgets/app_bar_home.dart';
import 'package:poke_app/widgets/pokemon_grid/pokemon_grid.dart';
import 'package:poke_app/widgets/select_button_list/select_button_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const route = "/home";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController();
    final searchTextController = TextEditingController();

    return Scaffold(
      key: controller.scaffoldKey,
      drawer: const Drawer(
        child: Text('aaa'),
      ),
      appBar: AppBarHome(
        leading: DrawerButton(
          scaffoldKey: controller.scaffoldKey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchCard(
              size: size,
              searchTextController: searchTextController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: SelectButtonList(
                size: size,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
              child: Text(
                'Mais Procurados',
                style: TextStyles.type,
                textAlign: TextAlign.start,
              ),
            ),
            PokemonGrid(size: size),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
        size: size,
      ),
    );
  }
}
