import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, int> {
  BottomNavigationBloc() : super(0) {
    on<BotomNavigationIndexUpdate>((event, emit) {
      // TODO: implement event handler
      emit(event.index);
    });
  }
}
