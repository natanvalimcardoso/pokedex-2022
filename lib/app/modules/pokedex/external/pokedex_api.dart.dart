import 'dart:convert';

import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex_2022/app/modules/pokedex/infra/datasource/pokedex_datasource.dart';
import 'package:http/http.dart' as https;

import '../../../../core/consts/api_pokemon_const.dart';
//Aqui é onde implementa, poderia ser chamado de PokedexDatasourceImpDart
class PokedexApi implements PokedexDatasource {

  @override
  Future<List<PokemonModel>> getAllPokemon() async {
    final response = await https.get(Uri.parse(ApiPokemonConst.allPokemonsURL));

    try {
      var decodedJson = jsonDecode(response.body);
    } catch (e) {
      print('Erro ao fazer a requisição');
    }
  }
  
  
}
