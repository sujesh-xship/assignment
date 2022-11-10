import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

class CounterBloc extends Bloc<CounterblocEvent, CounterblocState> {
  CounterBloc() : super(CounterblocState(counter: 0)){
    on<CounterblocEvent>((event, emit) {
      //emit(CounterInitialState());
      if (event is IncrementEvent) {
        emit(CounterblocState(counter:state.counter+1));
      } else if (event is DecrementEvent) {
        emit(CounterblocState(counter: state.counter - 1));
      }
    });
  }
}
