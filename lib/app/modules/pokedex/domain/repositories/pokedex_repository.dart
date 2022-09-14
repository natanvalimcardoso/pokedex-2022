// Aqui eu faço os contratos de implementação, ou seja, eu defino o que eu preciso para implementar a regra de negócio
import '../model/pokemon_model.dart';

abstract class PokedexRepository {
  Future<List<PokemonModel>> getAllPokemon();
}