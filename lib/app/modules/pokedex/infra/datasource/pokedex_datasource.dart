import '../../domain/model/pokemon_model.dart';

abstract class PokedexDatasource{
  Future<List<PokemonModel>> getAllPokemon();
}