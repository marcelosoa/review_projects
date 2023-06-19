import 'dart:async';

import 'package:bloc/bloc.dart';
part 'bloc_event.dart';
part 'bloc_state.dart';

class PasswordBloc extends Bloc<BlocEvent, BlocState> {
  PasswordBloc() : super(BlocStateInitial()) {
    on<BlocEventFindAllPasswords>(_findAllPasswords);
    on<BlocEventAddNewPassword>(_addNewPassword);
    on<BlocEventRemovePassword>(_removePassword);
  }

  FutureOr<void> _findAllPasswords(
    BlocEventFindAllPasswords event, Emitter<BlocState> emit ) async {
      final passwords = ['Marcelo Soares', 'Roberta Mugue' ];
      await Future.delayed(Duration(seconds: 3));
      emit(BlocStateData(passwords: passwords));
    }

  
  // FutureOr<void> _addNewPassword(
  //   BlocEventAddNewPassword event, Emitter<BlocState> emit ) async {
  //     final blocState = state;
  //     if (blocState is BlocStateData) {
  //       final passwords = [...blocState.passwords];
  //       emit(BlocStateData(passwords: passwords));
  //     }
  //   }

  FutureOr<void> _addNewPassword(
    BlocEventAddNewPassword event,
    Emitter<BlocState> emit 
    ) async {
      final blocState = state;
      if (blocState is BlocStateData) {
        final passwords = [...blocState.passwords];
        passwords.add(event.password);
        emit(BlocStateData(passwords: passwords));
      }
    }
  
  FutureOr<void> _removePassword(
    BlocEventRemovePassword event, Emitter<BlocState> emit ) async {
      final blockState = state;
      if (blockState is BlocStateData) {
        final passwords = blockState.passwords;
        passwords.retainWhere((element) => element != event.password);
        emit(BlocStateData(passwords: passwords));
      }
    } 
}