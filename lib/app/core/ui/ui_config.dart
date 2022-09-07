import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._(); //é uma constante e não pode ser instanciada por isso o construtor privado, somente atributos de classe

  static String get title => 'pokedex-2022';

  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xffA8CE4B),
        primaryColorDark: const Color(0xff689F38),
        primaryColorLight: const Color(0xffDDE9C7),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xffA8CE4B)),
      );
}
