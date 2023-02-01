import 'package:equatable/equatable.dart';

abstract class RiddleState extends Equatable {
  const RiddleState();

  @override
  List<dynamic> get props => [];
}

class RiddleInitial extends RiddleState {}

class NoRiddleState extends RiddleState {}

class RiddleLoadingState extends RiddleState {}

class RiddleReceivedState extends RiddleState {
  final String riddle;
  const RiddleReceivedState(this.riddle);
  String get showRiddle => riddle;
}


class ErrorState extends RiddleState {
  final String error;

  const ErrorState({required this.error});

  @override
  String toString() {
    return "Somenthing went wrong :( $error";
  }
}
