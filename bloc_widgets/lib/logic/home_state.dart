// part сенин бир бөлүгүн  'home_cubit.dart';
import 'dart:developer';

import 'package:bloc/bloc.dart';

part 'home_cubit.dart';

//abstract эч кандай улгу тузулбогон тушунукторду билдирген класс
// extends мурас алуу
abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSucsesState extends HomeState {}

class HomeErrorState extends HomeState {}
