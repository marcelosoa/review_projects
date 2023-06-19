import 'package:review_projects/app/core/exception/auth_exception.dart';
import 'package:review_projects/app/services/user/user_service.dart';
import '../../../core/notifier/default_notifier.dart';

class LoginControler extends DefaultChangeNotifier {
  final UserService _userService;
  String? infoMessage;

  LoginControler({required UserService userService})
      : _userService = userService;
  
  bool get hasInfo => infoMessage != null;

  Future<void> createUser(String email, String password) async {
    try {
      showLoadingAndResetState();
      notifyListeners();
      final user = await _userService.register(email, password);

      if ( user != null) {
        success();
      } else {
        setError('Usuário ou senha inválidos');
      }
    } on AuthException catch (e) {
      setError(e.message);
    } finally {
      notifyListeners();
    }
  }
}