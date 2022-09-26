import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_2022/app/modules/pokedex/presentation/bloc/pokedex_bloc.dart';

import '../bloc/pokedex_event.dart';
import '../bloc/pokedex_state.dart';
import '../widget/card_pokemon_widget.dart';
import '../widget/header_widget.dart';

class PokedexPage extends StatelessWidget {
  PokedexPage({Key? key}) : super(key: key);
  List pokemons = [];
  final bloc = PokedexBloc().add(const GetPokedexEvent());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          const HeaderWidget(
            title: 'Pokedex',
          ),
          // BlocBuilder<PokedexBloc, PokedexState>(
          //   builder: (context, state) {
              // if (condition) {

              // }
               Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.03,
                  left: size.width * 0.04,
                  right: size.width * 0.04,
                ),
                child: SizedBox(
                  height: size.height * 0.8,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return const CardPokemonWidget(
                        image: 'https://www.serebii.net/pokemongo/pokemon/001.png',
                        namePokemon: 'Bumbassaur', numPokemon: '002',
                      );
                    },
                  ),
                ),
              )
            // },
          // )
        ],
      ),
    );
  }
}
