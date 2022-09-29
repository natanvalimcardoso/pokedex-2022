import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

class NewErrorWidget extends StatelessWidget {
  final String message;
  final String title;
  const NewErrorWidget({Key? key, required this.message, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.55,
      height: size.height * 0.42,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/error.json',
              width: size.width * 0.3,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pop();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(ThemeColor.primaryRed),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
