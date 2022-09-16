// As usecases são responsáveis por fazer a ponte entre a camada de domínio e a camada de infraestrutura (data)
// Ela é a implementação da regra de negócio
import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';

import '../repositories/pokedex_repository.dart';

abstract class IGetAllPokemonUsecase {
  Future<List<PokemonModel>> call();
}

class GetAllPokemonUsecaseImp implements IGetAllPokemonUsecase {
  const GetAllPokemonUsecaseImp(this.repository);

  final PokedexRepository repository;

  @override
  Future<List<PokemonModel>> call() async {
    return repository.getAllPokemon();
  }
}
