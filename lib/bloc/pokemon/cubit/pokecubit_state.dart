part of 'pokecubit_cubit.dart';

class PokemonCubitState {
  Pokemon pokemon;

  PokemonCubitState({required this.pokemon});
}

class PokemonCubitGetState extends PokemonCubitState {
  BuildContext context;

  PokemonCubitGetState(this.context) : super(pokemon: Pokemon.safeInstance());
}

class PokemonCubtLoadEvent extends PokemonCubitState {
  PokemonCubtLoadEvent() : super(pokemon: Pokemon.safeInstance());
}
