import 'package:pokedex_2022/app/modules/pokedex/domain/usecases/get_all_pokemon_usecase.dart';
import 'package:pokedex_2022/app/modules/pokedex/infra/repositories/pokedex_repository_imp.dart';

import 'external/pokedex_api.dart.dart';

void main(List<String> args) {
  final usecase = GetAllPokemonUsecaseImp(PokedexRepositoryImp(PokedexApi()));

  print(usecase.repository.getAllPokemon());
  // printar só os nome dos pokemons
  print(usecase.repository.getAllPokemon().then((value) => value.map((e) => e.name)));
}
