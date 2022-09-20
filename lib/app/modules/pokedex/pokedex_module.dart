import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_2022/core/consts/route_constants.dart';

import 'presentation/pages/pokedex_page.dart';

class PokedexModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          RouteConstants.pokedex,
          child: (_, args) => const PokedexPage(),
        ),
      ];
}
