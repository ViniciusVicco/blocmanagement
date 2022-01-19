//Use comparison "is" never "=="

abstract class PokemonEvent {}

class FetchPokemon implements PokemonEvent {}

class FetchAllPokemons extends PokemonEvent {}

class LoadPokemonStatus extends PokemonEvent {}
