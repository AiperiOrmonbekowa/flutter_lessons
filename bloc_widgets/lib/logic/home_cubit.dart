// part of сен 'home_cubit.dart' деген файлдын бөлүгүсүн
// home_state.dart - home_cubit.dart part аркылуу бир файлда иштеп атышат
part of 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState());

  Future<void> parseNumber(String value) async {
    // функция иштеп баштады, ui га loading корсотту
    emit(HomeLoadingState());
    //      await Future.delayed( const Duration(seconds: 1)); => бир секунда кутуш учун бердик
    await Future.delayed(const Duration(seconds: 1));
    // try аракет жасап кор
    try {
      final parsedValue = num.parse(value); // String value ni numberge kotor
      log(parsedValue.toString()); // которулган  number ди консолго жазуу
      emit(HomeSucsesState()); // ийгиликтуу аяктады ui га кабар бер
    } catch (e) {
      log(e.toString());
      emit(HomeErrorState()); // бир ката болду ui га кабар бер
    }
  }
}
