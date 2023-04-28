part of 'navigator_bloc_bloc.dart';

abstract class NavigatorBlocEvent extends Equatable {
  const NavigatorBlocEvent();

  @override
  List<Object> get props => [];
}

abstract class MyEvent {}

class EventA extends MyEvent {}

class EventB extends MyEvent {}

class EventNextPage extends MyEvent {}
