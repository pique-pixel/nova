import 'package:equatable/equatable.dart';

abstract class RegistrationEvent extends Equatable {
  const RegistrationEvent();
}

class OnStart extends RegistrationEvent {
  @override
  List<Object> get props => [];
}

class OnRegistration extends RegistrationEvent {
  final String email;
  final String password;
  final String confirmPassword;

  OnRegistration(this.email, this.password,this.confirmPassword);

  @override
  List<Object> get props => [email, password,confirmPassword];
}

class OnUnhandledException extends RegistrationEvent {
  @override
  List<Object> get props => [];
}
