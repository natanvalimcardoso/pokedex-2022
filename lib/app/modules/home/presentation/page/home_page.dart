import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../widgets/button_home_widget.dart';
import '../../../../../core/consts/route_constants.dart';

import '../widgets/text_home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextHomeWidgets(
                    titleOne: 'Pokedex',
                    titleTwo: 'Natan Valim Cardoso',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.4),
                    child: ButtonHomeWidget(
                      onTap: () {
                        Modular.to.pushNamed(RouteConstants.pokedexModule);
                      },
                      title: 'Entrar',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
