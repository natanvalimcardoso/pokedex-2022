import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';

abstract class PokedexDatasource{
  Future<List<PokemonModel>> getAllPokemon();
}