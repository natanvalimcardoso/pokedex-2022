import 'package:elliptic_text/elliptic_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NothingFoundWidget extends StatelessWidget {
  const NothingFoundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.6,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: size.height * 0.4,
              width: double.infinity,
              child: const EllipticText(
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 17, 17, 17),
                ),
                text: "Nenhum pokemon encontrado!",
                perimiterAlignment: EllipticText_PerimiterAlignment.top,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Lottie.asset(
              'assets/animations/nothing_found.json',
              width: size.width * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
