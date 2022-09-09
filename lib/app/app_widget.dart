import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/utils/theme/ui_config.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/auth');
//continuar amanyha
    return MaterialApp.router(
      title: UiConfig.title,
      debugShowCheckedModeBanner: false,
      theme: UiConfig.theme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
