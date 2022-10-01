import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

class ThemeText {
  ThemeText._();

  static  TextStyle titleOneGray = GoogleFonts.fredokaOne(
    fontSize: 28,
    height: 1.41,
    fontWeight: FontWeight.w400,
    color: ThemeColor.darkGray,
  );
  static  TextStyle subtitleOneGray = GoogleFonts.fredokaOne(
    fontSize: 22,
    height: 1.41,
    fontWeight: FontWeight.w400,
    color: ThemeColor.mediumGray,
  );
  static  TextStyle titleOneWhite = GoogleFonts.fredokaOne(
    fontSize: 28,
    height: 1.41,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static  TextStyle subtitleOneWhite = GoogleFonts.fredokaOne(
    fontSize: 22,
    height: 1.41,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    letterSpacing: 1.5,
  );
 
}