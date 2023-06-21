import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:review_projects/app/modules/auth/register/register_event.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final FirebaseAuth _firebaseAuth;

  RegisterBloc(this._firebaseAuth) : super(RegisterInitialState()) {
    on<RegisterEventCreateUser>(_createAccount);
  }

  FutureOr<void> _createAccount(
    RegisterEventCreateUser event,
    Emitter<RegisterState> emit,
  ) async {
    final registerState = state;
    if (registerState is RegisterStateData) {
      emit(RegisterLoadingState());

      try {
        final UserCredential userCredential =
            await _firebaseAuth.createUserWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );

        emit(RegisterSuccessState(userCredential.user!));
      } catch (e) {
        emit(RegisterErrorState(e.toString()));
      }
    }
  }
}
