class PokemonState {}

class LoadingPokeEvent implements PokemonState {}

class SuccesPokeEvent extends PokemonState {}

class FailurePokeEvent extends PokemonState {}
