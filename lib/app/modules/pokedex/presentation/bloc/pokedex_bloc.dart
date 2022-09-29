import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_all_pokemon_usecase.dart';
import '../../external/pokedex_api.dart.dart';
import '../../infra/repositories/pokedex_repository_imp.dart';
import 'pokedex_event.dart';
import 'pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc() : super(const PokedexInitialState()) {
    on<GetPokedexEvent>(_onShowAllPokemon);
  }

  Future<void> _onShowAllPokemon(event, emit) async {
    final getPokemonsUsecase = GetAllPokemonUsecaseImp(PokedexRepositoryImp(PokedexApi()));

    emit(const PokedexLoadingState());
    try {
      final pokemons = await getPokemonsUsecase.call();
      // throw Exception();
      emit(PokedexLoadedState(pokemons: pokemons));
    } catch (error) {
      emit(PokedexErrorState('Erro ao carregar a pokedex: ${error.toString()}'));
    }
  }
}
