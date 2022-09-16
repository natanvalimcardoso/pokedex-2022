import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/repositories/pokedex_repository.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/usecases/get_all_pokemon_usecase.dart';

void main() {
  final repository = PokedexRepositoryMock();
  final usecase = GetAllPokemonUsecaseImp(repository);

  test('Deve retornar uma lista de PokemonModel', () async {
    final result = await usecase();
    expect(result, isA<List<PokemonModel>>());
    expect(result[0].id, 1);
    expect(result[0].img, 'http://www.serebii.net/pokemongo/pokemon/001.png');
    expect(result[0].num, '001');
    expect(result[0].name, 'Bulbasaur');
  });

  // test('Deve dar erro quando não retornar a lista de pokemon', () async {
  //   final result = usecase();
  //   expect(() async => await result, throwsA(isA<String>()));
  // });
}

class PokedexRepositoryMock implements PokedexRepository {
  @override
  Future<List<PokemonModel>> getAllPokemon() async {
    return [
      PokemonModel(
        id: 1,
        img: 'http://www.serebii.net/pokemongo/pokemon/001.png',
        num: '001',
        name: 'Bulbasaur',
      ),
    ];
  }
}
