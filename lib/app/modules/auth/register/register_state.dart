import 'package:firebase_auth/firebase_auth.dart';

abstract class RegisterState {}

class RegisterInitialState extends RegisterState {}

class RegisterStateData extends RegisterState {
  final String password;
  final String email;

  RegisterStateData({
    required this.password,
    required this.email,
  });
}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  final User user;

  RegisterSuccessState(this.user);
}

class RegisterErrorState extends RegisterState {
  final String errorMessage;

  RegisterErrorState(this.errorMessage);
}
