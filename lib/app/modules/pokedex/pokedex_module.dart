import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/consts/route_constants.dart';
import 'presentation/pages/pokedex_about_pokemon.dart';
import 'presentation/pages/pokedex_page.dart';

class PokedexModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const PokedexPage(),
        ),
        ChildRoute(
          RouteConstants.pokedexAboutPokemonPage,
          child: (_, args) => PokedexAboutPokemonPage(
            pokemon: args.data,
          ),
        ),
      ];
}
