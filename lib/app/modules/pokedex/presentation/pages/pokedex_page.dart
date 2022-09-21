import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

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
            padding:EdgeInsets.only(top: size.height * 0.03),
            child: SizedBox(
              height: size.height * 0.8,
              width: double.infinity,
              
              // child: ListView.builder(itemBuilder: itemBuilder)
            ),
          )
        ],
      ),
    );
  }
}
