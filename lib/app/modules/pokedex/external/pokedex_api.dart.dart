import 'dart:convert';

import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex_2022/app/modules/pokedex/infra/datasource/pokedex_datasource.dart';
import 'package:http/http.dart' as https;

import '../../../../core/consts/api_pokemon_const.dart';

class PokedexApi implements PokedexDatasource {
  @override
  Future<List<PokemonModel>> getAllPokemon() async {
    final response = await https.get(Uri.parse(ApiPokemonConst.allPokemonsURL));

    try {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final listPokemon = json['pokemon'] as List<dynamic>;
      return listPokemon.map((pokemon) => PokemonModel.fromMap(pokemon)).toList();
    } catch (e) {
      return throw ('Erro ao carregar lista de pokemons');
    }
  }
}

main(){
  final  pokedexApi = PokedexApi();
  print(pokedexApi.getAllPokemon());
}