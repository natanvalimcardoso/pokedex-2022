import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/utils/theme/theme_color.dart';

class TitleWeaknessWidget extends StatelessWidget {
  final String title;
  const TitleWeaknessWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.fredokaOne(
            fontWeight: FontWeight.w500,
            color: ThemeColor.darkGray,
            letterSpacing: 1.9,
            fontSize: size.width * 0.051,
          ),
        ),
        Container(
          width: size.width * 0.15,
          height: size.height * 0.001,
          color: ThemeColor.lightMediumGray,
          margin: EdgeInsets.only(
            top: size.height * 0.01,
            bottom: size.height * 0.01,
          ),
        ),
      ],
    );
  }
}
