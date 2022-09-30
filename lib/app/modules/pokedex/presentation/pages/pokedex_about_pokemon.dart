import 'package:flutter/material.dart';

import '../widget/about_pokemon/header_about_pokemon_widget.dart';

class PokedexAboutPokemonPage extends StatelessWidget {
  const PokedexAboutPokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: const [
          HeaderAboutPokemonWidget(
            image: '',
            name: '',
            number: '',
          )
        ],
      ),
    );
  }
}
