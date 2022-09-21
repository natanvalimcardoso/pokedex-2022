import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/theme/theme_color.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.14,
      decoration: const BoxDecoration(
          color: ThemeColor.primaryRed,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.04),
            child: Text(
              title,
              style: GoogleFonts.pressStart2p(
                textStyle: TextStyle(
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
