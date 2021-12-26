import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:blocmanagement/models/pokemon_model.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'pokecubit_state.dart';

class PokecubitCubit extends Cubit<PokecubitState> {
  Dio dio = Dio();
  PokecubitCubit()
      : super(PokecubitState(
            pokemon: Pokemon(
              name: "",
              url: "",
            ),
            isLoading: false));

  Future<void> obterPokemon() async {
    final response =
        await dio.get("https://pokeapi.co/api/v2/pokemon?limit=100&offset=200");
    final results = response.data['results'] as List;
    List<Pokemon> pokeList = [];
    results.forEach((element) {
      pokeList.add(Pokemon.fromJson(element));
    });
    Random r = Random();
    final value = pokeList[r.nextInt(pokeList.length)];

    emit(PokecubitState(pokemon: value, isLoading: false));
  }
}
