import 'package:bloc/bloc.dart';
import 'package:blocmanagement/pokemon/bloc/pokemon/bloc/pokemon_event.dart';
import 'package:blocmanagement/pokemon/bloc/pokemon/bloc/pokemon_state.dart';
import 'package:blocmanagement/pokemon/bloc/repository/pokemon_repository.dart';
import 'package:blocmanagement/pokemon/models/pokemon_model.dart';

class PokemonBloc extends Bloc<Pokemon, PokemonState> {
  late Pokemon pokemon;
  PokemonRepository pokemonRepository = PokemonRepository();
  PokemonBloc(PokemonState initialState) : super(initialState);

  @override
  Stream<PokemonState> mapEventToState(Pokemon event) async* {
    if (event is LoadingPokeEvent) {
      pokemon = await pokemonRepository.obterPokemon();
    }
  }
}
