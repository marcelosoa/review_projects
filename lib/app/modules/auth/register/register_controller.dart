import 'package:bloc/bloc.dart';
import 'package:review_projects/app/modules/auth/register/register_event.dart';
import 'package:review_projects/app/modules/auth/register/register_state.dart';
import 'package:review_projects/app/services/user/user_service.dart';

class RegisterController extends Bloc<RegisterEvent, RegisterState> {
  final UserService _userService;

  RegisterController(super.initialState, {required UserService userService})
      : _userService = userService;

  Future<void> createUser(String email, String password) async {
    print('clicou');
    final user = await _userService.register(email, password);
  }
}
