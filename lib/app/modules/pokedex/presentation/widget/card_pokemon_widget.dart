import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/consts/route_constants.dart';

class CardPokemonWidget extends StatelessWidget {
  final String image;
  final String namePokemon;
  final String numPokemon;
  const CardPokemonWidget(
      {Key? key, required this.image, required this.namePokemon, required this.numPokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => Modular.to.pushNamed(
        RouteConstants.pokedexModule+
        RouteConstants.pokedexAboutPokemonPage,
      ),
      child: Ink(
        height: size.height * 0.3,
        child: Card(
          elevation: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  namePokemon,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.3,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: size.height * 0.11,
                  child: Image.network(image),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                numPokemon,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  letterSpacing: 1.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
