import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/page/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(
      Modular.initialRoute,
      child: (_, __) => const HomePage(),
    )
  ];
}
