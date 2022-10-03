import 'package:flutter/material.dart';

import '../../domain/model/pokemon_model.dart';
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
            height: size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pokemon.type.length,
              padding: EdgeInsets.only(
                left: (size.width * (0.375 - (0.15 * (pokemon.type.length - 1)))),
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
        ],
      ),
    );
  }
}
