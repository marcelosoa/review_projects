part of 'password_bloc.dart';

abstract class BlocEvent {}


class BlocEventFindAllPasswords extends BlocEvent {}


class BlocEventAddNewPassword extends BlocEvent {
  final String password;

  BlocEventAddNewPassword({
    required this.password
  });
}


class BlocEventRemovePassword extends BlocEvent {
  final String password;
  BlocEventRemovePassword({
    required this.password
  });
}

class BlocEventCreateAccount extends BlocEvent {
  final String email;
  final String password;
  BlocEventCreateAccount({
    required this.email,
    required this.password
  });
}

class BlocEventLoginAccount extends BlocEvent {
  final String email;
  final String password;
  BlocEventLoginAccount({
    required this.email,
    required this.password
  });
}


