part of 'password_bloc.dart';


abstract class BlocState {}

class BlocStateInitial extends BlocState {
}


class BlocStateData extends BlocState {
  final List<String> passwords;

  BlocStateData({
    required this.passwords
  });
}