

import 'package:equatable/equatable.dart';

abstract class RiddleEvent extends Equatable {
  const RiddleEvent();
  @override
  List<dynamic> get props => [];
}

class GetRiddleEvent extends RiddleEvent {}
class GetRandomRiddleById extends RiddleEvent {
}
