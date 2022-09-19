import 'package:pokedex_2022/app/modules/pokedex/domain/usecases/get_all_pokemon_usecase.dart';
import 'package:pokedex_2022/app/modules/pokedex/infra/repositories/pokedex_repository_imp.dart';

import 'external/pokedex_api.dart.dart';

Future<void> main(List<String> args) async {
  final usecase = GetAllPokemonUsecaseImp(PokedexRepositoryImp(PokedexApi()));
  final result = await usecase.repository.getAllPokemon();
  print(result[13].img);
  print(result[13].name);
}
