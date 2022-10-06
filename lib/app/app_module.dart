import 'package:flutter_modular/flutter_modular.dart';
import 'modules/pokedex/pokedex_module.dart';
import '../core/consts/route_constants.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<Module> get imports => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          RouteConstants.homeModule,
          module: HomeModule(),
        ),
        ModuleRoute(
          RouteConstants.pokedexModule,
          module: PokedexModule(),
        ),
      ];
}
