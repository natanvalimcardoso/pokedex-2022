import 'package:flutter_modular/flutter_modular.dart';
import 'pages/pokedex_page.dart';

class PokedexModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const PokedexPage()),
  ];
}
