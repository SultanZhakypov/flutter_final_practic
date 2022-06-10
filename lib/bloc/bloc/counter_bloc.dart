import 'dart:math';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState(counter: 0));
  increment() {
    emit(CounterInitialState(counter: state.counter + 2));
  }

  decrement() {
    emit(CounterInitialState(counter: max(state.counter - 1, 0)));
  }
}

abstract class CounterState {
  final int counter;
  CounterState({
    required this.counter,
  });
}

class CounterInitialState extends CounterState {
  @override
  final int counter;
  CounterInitialState({
    required this.counter,
  }) : super(counter: counter);
}
