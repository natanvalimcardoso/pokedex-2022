import 'package:equatable/equatable.dart';
import '../../domain/model/pokemon_model.dart';

abstract class PokedexState extends Equatable {
  const PokedexState();

  @override
  List<Object> get props => []; // pra indicar que houve mudanca nas propriedades
}

class PokedexInitialState extends PokedexState {
  const PokedexInitialState();
}

class PokedexLoadingState extends PokedexState {
  const PokedexLoadingState();
}

class PokedexLoadedState extends PokedexState {
  final List<PokemonModel> pokemons;
  const PokedexLoadedState({required this.pokemons});

  @override
  List<Object> get props => [pokemons];
}

class PokedexErrorState extends PokedexState {
  final String errorMessage;

  const PokedexErrorState(this.errorMessage);
}
