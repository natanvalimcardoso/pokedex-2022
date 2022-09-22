import 'package:flutter/material.dart';

import '../widget/card_pokemon_widget.dart';
import '../widget/header_widget.dart';

class PokedexPage extends StatelessWidget {
  PokedexPage({Key? key}) : super(key: key);
  List pokemons = [];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          const HeaderWidget(
            title: 'Pokedex',
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: size.width * 0.04,
              right: size.width * 0.04,
            ),
            child: SizedBox(
              height: size.height * 0.8,
              width: double.infinity,
              child: GridView.builder(
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return  const CardPokemonWidget(image: '',);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
