import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigator_bloc_event.dart';
part 'navigator_bloc_state.dart';

class NavigatorBlocBloc extends Bloc<NavigatorBlocEvent, NavigatorBlocState> {
  NavigatorBlocBloc() : super(NavigatorBlocInitial()) {
    on<NavigatorBlocEvent>((event, emit) {});
  }
}

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA()) {
    on<EventA>((event, emit) => emit(StateA()));
    on<EventB>((event, emit) => emit(StateB()));
    on<EventNextPage>(((event, emit) => emit(StateNextPage())));
  }
}
