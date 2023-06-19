import 'dart:async';

import 'package:review_projects/app/core/events/password_events.dart';
import 'package:review_projects/app/core/models/password/password.dart';
import 'package:review_projects/app/core/repositories/password_repository.dart';
import 'package:review_projects/app/core/state/password_state.dart';

class PasswordBloc {
  final _passwordRepository = PasswordRepository();

  final StreamController<PasswordEvent> _inputPasswordController = StreamController<PasswordEvent>();
  final StreamController<PasswordState> _outputPasswordController = StreamController<PasswordState>();

  Sink<PasswordEvent> get inputPassword => _inputPasswordController.sink;
  Stream<PasswordState> get stream => _outputPasswordController.stream;

  PasswordBloc() {
    _inputPasswordController.stream.listen(_mapEventToState);
    
  }

  _mapEventToState(PasswordEvent event) {
    List<Password> passwords = [];

    if( event is LoadPasswordEvent) {
      passwords = _passwordRepository.loadPaswords();
    } else if (event is AddPasswordEvent) {
      passwords = _passwordRepository.addPassword(event.password);
    } else if (event is RemovePasswordEvent) {
      passwords = _passwordRepository.deletePassword(event.password);
    }

    _outputPasswordController.add(PasswordSuccessState(password: passwords));
  }
}