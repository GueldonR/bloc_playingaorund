import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // default value
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>((event, emit) {
      // increment
      emit(CounterState(state.count + 1));
    });
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(state.count - 1));
    });
    on<CounterResetPressed>((event, emit) {
      emit(CounterState(0));
    });
  }
}
