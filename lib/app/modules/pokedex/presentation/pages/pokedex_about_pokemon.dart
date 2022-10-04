import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/theme/theme_color.dart';
import '../../domain/model/pokemon_model.dart';
import '../widget/about_pokemon/header_about_pokemon_widget.dart';
import '../widget/about_pokemon/text_with_icon_widget.dart';
import '../widget/about_pokemon/title_weakness_widget.dart';
import '../widget/about_pokemon/type_container_widget.dart';
import '../widget/about_pokemon/weakness_list_widget.dart';

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
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: pokemon.type.length,
              itemBuilder: (context, index) {
                return Center(
                  child: TypeContainerWidget(
                    typeName: pokemon.type[index],
                    typeColorLight: pokemon.baseColorLightList[index],
                    typeColorDark: pokemon.baseColorDark[index],
                    typeImage: pokemon.imageType![index],
                  ),
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
          Container(
            width: size.width * 0.9,
            height: size.height * 0.17,
            margin: EdgeInsets.only(
              top: size.height * 0.04,
              bottom: size.height * 0.01,
            ),
            child: Column(
              children: [
                const TitleWeaknessWidget(
                  title: 'Weakness',
                ),
                WeaknessListWidget(
                  pokemonWeakness: pokemon,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
