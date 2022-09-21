import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_2022/core/consts/route_constants.dart';

import '../core/utils/theme/ui_config.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(RouteConstants.homeModule);
    return MaterialApp.router(
      title: UiConfig.title,
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
