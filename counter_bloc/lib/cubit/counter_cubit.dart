import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // баштапкы абалы

  increment() => emit(state + 1);
  decrement() => emit(state - 1);
}
