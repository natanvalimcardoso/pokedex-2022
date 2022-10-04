import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/consts/route_constants.dart';
import '../../domain/model/pokemon_model.dart';
import '../bloc/pokedex_bloc.dart';
import '../bloc/pokedex_event.dart';
import '../bloc/pokedex_state.dart';
import '../widget/bloc_alerts_widgets/new_error_widget.dart';
import '../widget/bloc_alerts_widgets/new_loading_widget.dart';
import '../widget/pokedex_main/card_pokemon_widget.dart';
import '../widget/pokedex_main/header_widget.dart';
import '../widget/pokedex_main/nothing_found_widget.dart';
import '../widget/pokedex_main/textfield_pokemon_widgte.dart';

class PokedexPage extends StatefulWidget {
  const PokedexPage({Key? key}) : super(key: key);

  @override
  State<PokedexPage> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  final controllerTextField = TextEditingController();
  final bloc = PokedexBloc()
    ..add(
      const GetPokedexEvent(),
    );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          const HeaderWidget(
            title: 'Pokedex',
          ),
          TextfieldPokemonWidgte(
            onChanged: (_) {
              setState(() {});
            },
            controllerTextField: controllerTextField,
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
                List<PokemonModel> filteredPokemonList = state.pokemons
                    .where((pokemons) => pokemons.name.toLowerCase().startsWith(
                          controllerTextField.text.toLowerCase(),
                        ))
                    .toList();

                return filteredPokemonList.isNotEmpty
                    ? Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.02,
                          left: size.width * 0.04,
                          right: size.width * 0.04,
                          bottom: size.height * 0.02,
                        ),
                        child: SizedBox(
                          height: size.height * 0.72,
                          width: double.infinity,
                          child: GridView.builder(
                            itemCount:
                                filteredPokemonList.length, //Sem pesquisa: state.pokemons.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.4,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return CardPokemonWidget(
                                image: filteredPokemonList[index].image,
                                namePokemon: filteredPokemonList[index].name,
                                numPokemon: filteredPokemonList[index].num,
                                onTap: () => Modular.to.pushNamed(
                                  RouteConstants.pokedexModule +
                                      RouteConstants.pokedexAboutPokemonPage,
                                  arguments: PokemonModel(
                                    name: filteredPokemonList[index].name,
                                    img: filteredPokemonList[index].image,
                                    num: filteredPokemonList[index].num,
                                    type: filteredPokemonList[index].type,
                                    height: filteredPokemonList[index].height,
                                    weight: filteredPokemonList[index].weight,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    : const NothingFoundWidget();
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
