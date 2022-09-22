import 'package:flutter/material.dart';

class CardPokemonWidget extends StatelessWidget {
  final String image;
  const CardPokemonWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: Center(
        child: Container(
          width: size.width * 0.28,
          child: Image.network(image),
        ),
      ),
    );
  }
}
