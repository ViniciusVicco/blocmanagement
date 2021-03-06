// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // Define estado inicial

  @override
  void onChange(Change<int> change) {
    print("Antes $change");
    super.onChange(change);
    print("Depois $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print("$error, $stackTrace");
    super.onError(error, stackTrace);
  }

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
