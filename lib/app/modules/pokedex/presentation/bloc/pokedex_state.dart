import 'package:equatable/equatable.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';

abstract class PokedexState extends Equatable {
  const PokedexState();

  @override
  List<Object> get props => []; // pra indicar que houve mudanca nas propriedades do estado 
}

class PokedexInitial extends PokedexState {
  const PokedexInitial();
}

class PokedexLoading extends PokedexState {
  const PokedexLoading();
}

class PokedexLoaded extends PokedexState {
  final List<PokemonModel> pokemons;
  const PokedexLoaded({required this.pokemons});

  @override
  List<Object> get props => [pokemons]; 
}

class PokedexError extends PokedexState {
  final String errorMessage;

  const PokedexError(this.errorMessage);
  
}
