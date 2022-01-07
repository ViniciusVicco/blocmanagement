import 'package:bloc/bloc.dart';
import 'package:blocmanagement/bloc/repository/pokemon_repository.dart';
import 'package:blocmanagement/models/pokemon_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

part 'pokecubit_state.dart';

class PokecubitCubit extends Cubit<PokemonCubitState> {
  PokecubitCubit() : super(PokemonCubitState(pokemon: Pokemon.safeInstance()));

  PokemonRepository repository = PokemonRepository();

  Pokemon pokemon = Pokemon.safeInstance();

  Future<void> getPokemonm() async {
    emit(PokemonCubtLoadEvent());
    Pokemon poke = await repository.obterPokemon();
    emit(PokemonCubitState(pokemon: poke));
    pokemon = poke;
  }
}
