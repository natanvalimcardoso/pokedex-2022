import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_2022/app/modules/pokedex/pokedex_module.dart';
import 'package:pokedex_2022/core/consts/route_constants.dart';

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
