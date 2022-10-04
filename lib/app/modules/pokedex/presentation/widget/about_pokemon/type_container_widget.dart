import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/utils/theme/theme_font.dart';

class TypeContainerWidget extends StatelessWidget {
  final String typeName;
  final Color typeColorLight;
  final Color typeColorDark;
  final String typeImage;
  const TypeContainerWidget({
    Key? key,
    required this.typeName,
    required this.typeColorLight,
    required this.typeImage,
    required this.typeColorDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.30,
      height: size.height * 0.1,
      padding: EdgeInsets.only(
        top: size.height * 0.02,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.02,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.16,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  color: typeColorDark,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01,
                horizontal: size.width * 0.042,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: typeColorLight,
              ),
              child: Text(
                typeName,
                style: GoogleFonts.fredokaOne(
                  height: 1.41,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 2,
                  //responsivo
                  fontSize: size.width * 0.031,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.06),
              child: Image.asset(
                typeImage,
                height: size.height * 0.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
