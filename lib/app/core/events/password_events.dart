import 'package:review_projects/app/core/models/password/password.dart';

abstract class PasswordEvent {

}

class LoadPasswordEvent extends PasswordEvent {}

class AddPasswordEvent extends PasswordEvent {
  Password password;

  AddPasswordEvent({
    required this.password
  });
}

class RemovePasswordEvent extends PasswordEvent {
  Password password;

  RemovePasswordEvent({
    required this.password
  });
}