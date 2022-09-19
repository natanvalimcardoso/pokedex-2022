import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHomeWidgets extends StatelessWidget {
  final String titleOne;
  final String titleTwo;

  const TextHomeWidgets({Key? key, required this.titleOne, required this.titleTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.22),
          child: Text(
            titleOne,
            style: GoogleFonts.pressStart2p(
              textStyle: TextStyle(
                fontSize: size.width * 0.115,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 5,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: Text(
            titleTwo,
            style: GoogleFonts.pressStart2p(
              textStyle: TextStyle(
                fontSize: size.width * 0.03,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 5,
              ),
            ),
          ),
        )
      ],
    );
  }
}
