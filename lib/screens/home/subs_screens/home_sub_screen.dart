import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:poke_app/screens/home/home_controller.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/text_styles.dart';
import '../../../widgets/pokemon_grid/pokemon_grid.dart';
import '../../../widgets/select_button_list/select_button_list.dart';
import '../children/search_card/search_card.dart';

class HomeSubScreen extends StatelessWidget {
  const HomeSubScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController(context);

    return FutureBuilder(
      future: controller.loadPokemons(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text('error');
          case ConnectionState.waiting:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOADING',
                  style: TextStyles.loading,
                ),
                const LoadingIndicator(
                  indicatorType: Indicator.ballClipRotateMultiple,
                  colors: [AppColors.gren],
                  strokeWidth: 6,
                )
              ],
            );
          case ConnectionState.active:
            return const Text('active');
          case ConnectionState.done:
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchCard(
                    size: size,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: SelectButtonList(
                      size: size,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: Text(
                      'Mais Procurados',
                      style: TextStyles.type,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  PokemonGrid(size: size),
                ],
              ),
            );
        }
      },
    );
  }
}
