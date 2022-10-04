import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';

import '../../../../../../core/utils/theme/theme_color.dart';

class WeaknessListWidget extends StatelessWidget {
  final PokemonModel pokemonWeakness;

  const WeaknessListWidget({ Key? key, required this.pokemonWeakness,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
       return  SizedBox(
                  width: double.infinity,
                  height: size.height * 0.1,
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: pokemonWeakness.weaknesses.length,
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
                              color: pokemonWeakness.baseColorWeaknesses[index],
                              elevation: 2,
                              child: Center(
                                child: Text(
                                  pokemonWeakness.weaknesses[index],
                                  style: GoogleFonts.fredokaOne(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
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
                );
  }
}