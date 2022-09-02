import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Modular.setObservers([Asuka.asukaHeroController]);
    Modular.setInitialRoute('/auth');

    return ScreenUtilInit(
      designSize: const Size(390, 894),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Cuida Pet',
          debugShowCheckedModeBanner: true,
          builder: Asuka.builder,
          theme: ThemeData(),
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
        );
      },
    );
  }
}
