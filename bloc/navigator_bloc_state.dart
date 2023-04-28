part of 'navigator_bloc_bloc.dart';

abstract class NavigatorBlocState extends Equatable {
  const NavigatorBlocState();

  @override
  List<Object> get props => [];
}

class NavigatorBlocInitial extends NavigatorBlocState {}

abstract class MyState {}

class StateA extends MyState {}

class StateB extends MyState {}

class StateNextPage extends MyState {}
