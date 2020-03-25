import 'package:equatable/equatable.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();
}

class OnUpdateMenuEvent extends MenuEvent {
  @override
  List<Object> get props => null;
}

class OnExitMenuEvent extends MenuEvent {
  @override
  List<Object> get props => null;
}
