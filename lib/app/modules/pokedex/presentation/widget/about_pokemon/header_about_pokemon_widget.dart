import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../core/utils/theme/theme_color.dart';
import '../../../../../../core/utils/theme/theme_font.dart';

class HeaderAboutPokemonWidget extends StatelessWidget {
  final String image;
  final String name;
  final String number;
  final Color? color;
  const HeaderAboutPokemonWidget({
    Key? key,
    required this.image,
    required this.name,
    required this.number,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.05),
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Modular.to.pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          name,
                          style: ThemeText.titleOneWhite,
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Container(
                          width: size.width * 0.18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(108, 121, 121, 121),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "#$number",
                            style: ThemeText.subtitleOneWhite,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Image.network(
                          image,
                          height: size.height * 0.25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
