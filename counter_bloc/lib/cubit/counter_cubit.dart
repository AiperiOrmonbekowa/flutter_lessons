import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // баштапкы абалы

  void increment() {
    emit(4);
  }
}
