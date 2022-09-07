import 'package:flutter/material.dart';

//* Fiz isso para ficar mais facil de chamar o tema da aplicação e não precisar ficar colocando "Theme.of(context).primaryColor"     toda hora  é só colocar agora "context.primaryColor" e pronto

extension ThemeExtension on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get primaryColorDark => Theme.of(this).primaryColorDark;
  Color get primaryColorLight => Theme.of(this).primaryColorLight;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
