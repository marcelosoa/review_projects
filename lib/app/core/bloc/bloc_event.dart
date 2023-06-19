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


