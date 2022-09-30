import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

class ThemeText {
  ThemeText._();

  static  TextStyle titleOne = GoogleFonts.fredokaOne(
    fontSize: 28,
    height: 1.41,
    fontWeight: FontWeight.w400,
    color: ThemeColor.darkGray,
  );
  static  TextStyle subtitleOne = GoogleFonts.fredokaOne(
    fontSize: 22,
    height: 1.41,
    fontWeight: FontWeight.w400,
    color: ThemeColor.mediumGray,
  );
}