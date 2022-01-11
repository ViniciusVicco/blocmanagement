// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

enum CounterEventEnum { increment, decrement }

class CounterBloc extends Bloc<CounterEventEnum, int> {
  CounterBloc() : super(0); // Define estado inicial

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
  }

  @override
  void onEvent(CounterEventEnum event) {
    if (event == CounterEventEnum.decrement) {}
    print(event);
    super.onEvent(event);
  }

  @override
  void onTransition(Transition<CounterEventEnum, int> transition) {
    // TODO: implement onTransition
    super.onTransition(transition);
  }

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}
