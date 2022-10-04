import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/theme/theme_color.dart';
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
                Text(
                  'Weakness',
                  style: GoogleFonts.fredokaOne(
                    fontWeight: FontWeight.w500,
                    color: ThemeColor.darkGray,
                    letterSpacing: 1.9,
                    fontSize: size.width * 0.051,
                  ),
                ),
                Container(
                  width: size.width * 0.15,
                  height: size.height * 0.001,
                  color: ThemeColor.lightMediumGray,
                  margin: EdgeInsets.only(
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: size.height * 0.1,
                  // Para alinhar os elementos no centro de uma listviewbuilder é necessário usar o Align e não o Center
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: pokemon.weaknesses.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Container(
                            width: size.width * 0.20,
                            height: size.height * 0.07,
                            margin: EdgeInsets.only(
                              right: size.width * 0.02,
                              left: size.width * 0.02,
                            ),
                            decoration: BoxDecoration(
                              color: ThemeColor.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Card(
                              color: Color.fromARGB(255, 232, 232, 232),
                              elevation: 2,
                              child: Center(
                                child: Text(
                                  pokemon.weaknesses[index],
                                  style: GoogleFonts.fredokaOne(
                                    fontWeight: FontWeight.w500,
                                    color: pokemon.baseColorWeaknesses[index],
                                    letterSpacing: 1.4,
                                    fontSize: size.width * 0.04,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
