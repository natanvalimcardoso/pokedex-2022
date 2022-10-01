import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';
import 'package:pokedex_2022/core/utils/theme/theme_font.dart';

import '../widget/about_pokemon/header_about_pokemon_widget.dart';
import '../widget/about_pokemon/type_container_widget.dart';

class PokedexAboutPokemonPage extends StatelessWidget {
  final PokemonModel pokemon;
  const PokedexAboutPokemonPage({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          HeaderAboutPokemonWidget(
            image: pokemon.image,
            name: pokemon.name,
            number: pokemon.num,
            color: pokemon.baseColor,
          ),
          SizedBox(
            width: double.infinity,
            height: size.height * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              padding: EdgeInsets.only(
                left: (size.width * (0.375 - (0.15 * 2))),
              ),
              itemBuilder: (context, index) {
              return TypeContainerWidget(
                typeName: pokemon.type[index],
                typeColorLight: pokemon.baseColor!,
                typeColorDark: pokemon.baseColor!,
                typeImage: pokemon.type[index],
              );
              },
            ),
          ),
        ],
      ),
    );
  }
}
