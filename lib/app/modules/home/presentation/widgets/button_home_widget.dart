import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../core/utils/theme/theme_color.dart';

class ButtonHomeWidget extends StatelessWidget {
  final Function() onTap;
  final String title;

  const ButtonHomeWidget({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.4,
      height: size.height * 0.06,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(ThemeColor.primaryRed),
        ),
        child: Text(
          title.toUpperCase(),
          style: GoogleFonts.russoOne(
            textStyle: TextStyle(
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 4,
            ),
          ),
        ),
      ),
    );
  }
}
