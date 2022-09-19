import 'package:flutter/material.dart';

import '../../pokedex/domain/model/pokemon_model.dart';

class HomePage extends StatelessWidget {
  final List<PokemonModel> listPokemon;
  const HomePage({Key? key, required this.listPokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: ListView.builder(
        itemCount: listPokemon.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listPokemon[index].name),
          );
        },
      ),
    );
  }
}
