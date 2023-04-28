import 'package:bloc_navigatins/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => MyBloc(),
    child: MyApp(),
  ));
}

abstract class MyEvent {}

class EventA extends MyEvent {}

class EventB extends MyEvent {}

class EventNextPage extends MyEvent {}

abstract class MyState {}

class StateA extends MyState {}

class StateB extends MyState {}

class StateNextPage extends MyState {}

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA()) {
    on<EventA>((event, emit) => emit(StateA()));
    on<EventB>((event, emit) => emit(StateB()));
    on<EventNextPage>((event, emit) => emit(StateNextPage()));
  }
}
