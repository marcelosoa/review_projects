import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterEvent {}

class RegisterEventCreateUser extends RegisterEvent {
  final String password;
  final String email;

  RegisterEventCreateUser({
    required this.email,
    required this.password,
  });
}

class RegisterState {}

class RegisterInitialState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  final User user;

  RegisterSuccessState(this.user);
}

class RegisterErrorState extends RegisterState {
  final String errorMessage;

  RegisterErrorState(this.errorMessage);
}
