import 'package:flutter/material.dart';
import 'package:pokedex_2022/core/utils/theme/theme_color.dart';

class CardPokemonWidget extends StatelessWidget {
  final String image;
  final String namePokemon;
  final String numPokemon;
  final Function()? onTap;
  const CardPokemonWidget(
      {Key? key,
      required this.image,
      required this.namePokemon,
      required this.numPokemon,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: ThemeColor.lightRed,
      highlightColor: ThemeColor.lightRed,
      onTap: onTap,
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
