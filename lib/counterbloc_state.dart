part of 'counterbloc_bloc.dart';


// abstract class CounterblocState extends Equatable {
//   const CounterblocState();
//
//   @override
//   List<Object> get props => [];
// }
// class CounterChangedState extends CounterblocState {
//   final int counter;
//   const CounterChangedState({required this.counter});
//
//
// }
// class CounterInitialState extends CounterblocState {}

class CounterblocState extends Equatable {
  final int counter;
  const CounterblocState({required this.counter});

  @override
  List<Object> get props => [counter];
}