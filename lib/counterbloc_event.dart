part of 'counterbloc_bloc.dart';

abstract class CounterblocEvent extends Equatable {
  const CounterblocEvent();
}
class IncrementEvent extends CounterblocEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class DecrementEvent extends CounterblocEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}