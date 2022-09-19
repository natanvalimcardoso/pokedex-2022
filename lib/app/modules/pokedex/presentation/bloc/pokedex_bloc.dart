import 'package:flutter_bloc/flutter_bloc.dart';

import 'pokedex_event.dart';
import 'pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc() : super(const PokedexInitialState()) {
    on<GetPokedexEvent>(_onShowAllPokemon);
  }

  Future<void> _onShowAllPokemon(event, emit) async {
    emit(const PokedexLoadingState());
    try {
      final pokemons = await event.repository.getPokemons();
      emit(PokedexLoadedState(pokemons: pokemons));
    } catch (error) {
      emit(PokedexErrorState(error.toString()));
    }
  }
}
