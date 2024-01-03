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
      // String value ni numberge kotor
      final parsedValue = num.parse(value);
      log(parsedValue.toString());
      emit(HomeSucsesState());
    } catch (e) {}
  }
}
