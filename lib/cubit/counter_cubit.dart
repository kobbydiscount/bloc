import 'package:bloc/bloc.dart';
import 'package:learning_bloc/models/counter_model.dart';

class CounterCubit extends Cubit<CounterModel> {
  CounterCubit() : super(CounterModel(counter: 0));

  void increment() => emit(CounterModel(counter: state.counter + 1));

  void decrement() => emit(CounterModel(counter: state.counter - 1));

  void reset() => emit(CounterModel(counter: 0));
}
