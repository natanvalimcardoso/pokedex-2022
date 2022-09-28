import 'dart:convert';

import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex_2022/app/modules/pokedex/infra/datasource/pokedex_datasource.dart';
import 'package:http/http.dart' as https;

import '../../../../core/consts/api_pokemon_const.dart';

List<PokemonModel>? listas;

class PokedexApi implements PokedexDatasource {
  @override
  Future<List<PokemonModel>> getAllPokemon() async {
    final response = await https.get(Uri.parse(ApiPokemonConst.allPokemonsURL));

    try {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final lista = json['pokemon'] as List<dynamic>;
      return lista.map((pokemon) => PokemonModel.fromMap(pokemon)).toList();
    } catch (e) {
      return throw ('Erro ao carregar lista de pokemons');
    }
  }
}

// Somente se o pokemon for igual a Bulbassaur ele chama
// void main(List<String> args) async {
//   final pokemons = PokedexApi().getAllPokemon();
//   await pokemons.then(
//     (value) => print(
//       value.firstWhere(
//         (element) => element.name == 'Bulbasaur',
//       ),
//     ),
//   );
// }
