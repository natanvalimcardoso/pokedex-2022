import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/pages/pokedex_page.dart';

class PokedexModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) =>  PokedexPage(),
        ),
      ];
}
