//Use comparison "is" never "=="

abstract class PokeEvent {}

class LoadingPokeEvent implements PokeEvent {}

class SuccesPokeEvent extends PokeEvent {}

class FailurePokeEvent extends PokeEvent {}
