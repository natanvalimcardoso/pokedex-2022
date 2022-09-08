import 'package:flutter_modular/flutter_modular.dart';
import './pokedex_page.dart';

class PokedexModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PokedexPage()),
  ];
}
