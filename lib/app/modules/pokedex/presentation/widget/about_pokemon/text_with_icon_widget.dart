import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/utils/theme/theme_color.dart';

class TextWithIconWidget extends StatelessWidget {
  final String text;
  final String textPokemon;
  final IconData icon;
  final Color color;

  const TextWithIconWidget({
    Key? key,
    required this.text,
    required this.textPokemon,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.01,
                    ),
                    child: Icon(
                      icon,
                      size: size.width * 0.08,
                      color: color,
                    ),
                  ),
                  Text(
                    text,
                    style: GoogleFonts.fredokaOne(
                      fontWeight: FontWeight.w500,
                      color: ThemeColor.darkGray,
                      letterSpacing: 1.4,
                      fontSize: size.width * 0.041,
                    ),
                  ),
                ],
              ),
              Text(
                textPokemon,
                style: GoogleFonts.fredokaOne(
                  height: 1.41,
                  fontWeight: FontWeight.w500,
                  color: ThemeColor.lightMediumGray,
                  letterSpacing: 1.5,
                  fontSize: size.width * 0.041,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
