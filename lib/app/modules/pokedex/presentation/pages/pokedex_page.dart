import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bloc/pokedex_bloc.dart';
import '../bloc/pokedex_event.dart';
import '../bloc/pokedex_state.dart';
import '../widget/bloc_alerts_widgets/new_error_widget.dart';
import '../widget/bloc_alerts_widgets/new_loading_widget.dart';
import '../widget/card_pokemon_widget.dart';
import '../widget/header_widget.dart';

class PokedexPage extends StatefulWidget {
  const PokedexPage({Key? key}) : super(key: key);

  @override
  State<PokedexPage> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  final bloc = PokedexBloc()..add(const GetPokedexEvent());



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          const HeaderWidget(
            title: 'Pokedex',
          ),
          BlocBuilder<PokedexBloc, PokedexState>(
            bloc: bloc,
            builder: (context, state) {
              if (state is PokedexErrorState) {
                return Expanded(
                  child: Center(
                    child: NewErrorWidget(
                      message: state.errorMessage,
                      title: 'Erro na Pokedex',
                    ),
                  ),
                );
              }
              if (state is PokedexLoadingState) {
                return const Center(
                  child: NewLoadingWidget(),
                );
              }

              if (state is PokedexLoadedState) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.03,
                    left: size.width * 0.04,
                    right: size.width * 0.04,
                  ),
                  child: SizedBox(
                    height: size.height * 0.8,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: state.pokemons.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.4,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return CardPokemonWidget(
                          image: state.pokemons[index].image,
                          namePokemon: state.pokemons[index].name,
                          numPokemon: state.pokemons[index].num,
                        );
                      },
                    ),
                  ),
                );
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
