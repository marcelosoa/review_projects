import 'package:review_projects/app/core/models/password/password.dart';

abstract class PasswordState {
  List<Password> password;

  PasswordState({
    required this.password
  });
}

class PasswordInitialState extends PasswordState {
  PasswordInitialState() : super(password: []);
}

class PasswordSuccessState extends PasswordState {
  PasswordSuccessState({required List<Password> password}) : super(password: password);
}