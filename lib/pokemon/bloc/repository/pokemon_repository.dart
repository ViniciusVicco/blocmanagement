import 'package:blocmanagement/pokemon/models/pokemon_model.dart';
import 'package:dio/dio.dart';
import 'dart:math';

class PokemonRepository {
  Dio dio = Dio();

  Future<Pokemon> obterPokemon() async {
    final response =
        await dio.get("https://pokeapi.co/api/v2/pokemon?limit=100&offset=200");
    final results = response.data['results'] as List;
    List<Pokemon> pokeList = [];
    results.forEach((element) {
      pokeList.add(Pokemon.fromJson(element));
    });
    Random r = Random();
    return pokeList[r.nextInt(pokeList.length)];
  }
}
