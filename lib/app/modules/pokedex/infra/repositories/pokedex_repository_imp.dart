import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex_2022/app/modules/pokedex/infra/datasource/pokedex_datasource.dart';

import '../../domain/repositories/pokedex_repository.dart';

class PokedexRepositoryImp implements PokedexRepository {

  final PokedexDatasource datasource;

  PokedexRepositoryImp(this.datasource);

  @override
  Future<List<PokemonModel>> getAllPokemon() {
    return datasource.getAllPokemon();
  }
}
