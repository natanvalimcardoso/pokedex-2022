import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

import '../../domain/model/pokemon_model.dart';
import '../widget/about_pokemon/header_about_pokemon_widget.dart';
import '../widget/about_pokemon/text_with_icon_widget.dart';
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
            height: size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pokemon.type.length,
              padding: EdgeInsets.only(
                left: (size.width * (0.350 - (0.15 * (pokemon.type.length - 1)))),
              ),
              itemBuilder: (context, index) {
                return TypeContainerWidget(
                  typeName: pokemon.type[index],
                  typeColorLight: pokemon.baseColorLightList[index],
                  typeColorDark: pokemon.baseColorDark[index],
                  typeImage: pokemon.imageType![index],
                );
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWithIconWidget(
                  color: pokemon.baseColor,
                  text: 'Height',
                  textPokemon: pokemon.height,
                  icon: Icons.height,
                ),
                TextWithIconWidget(
                  color: pokemon.baseColor,
                  text: 'Weight',
                  textPokemon: pokemon.weight,
                  icon: Icons.fitness_center_sharp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
