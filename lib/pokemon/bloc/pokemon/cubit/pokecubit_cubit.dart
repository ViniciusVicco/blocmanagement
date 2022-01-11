import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:blocmanagement/pokemon/bloc/pokemon/bloc/pokemon_event.dart';
import 'package:blocmanagement/pokemon/bloc/repository/pokemon_repository.dart';
import 'package:blocmanagement/pokemon/models/pokemon_model.dart';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

part 'pokecubit_state.dart';

class PokecubitCubit extends Cubit<PokemonCubitState> {
  PokecubitCubit() : super(PokemonCubitState(pokemon: Pokemon.safeInstance()));

  PokemonRepository repository = PokemonRepository();

  Pokemon pokemon = Pokemon.safeInstance();

  Stream mapEventToState(PokeEvent event) async* {
    if (event is LoadingPokeEvent) {}
  }

  Future<void> getPokemonm() async {
    emit(PokemonCubtLoadEvent());
    Pokemon poke = await repository.obterPokemon();
    emit(PokemonCubitState(pokemon: poke));
    pokemon = poke;
  }
}
