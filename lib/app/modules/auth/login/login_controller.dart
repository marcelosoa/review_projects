import 'package:review_projects/app/core/exception/auth_exception.dart';
import 'package:review_projects/app/services/user/user_service.dart';
import '../../../core/notifier/default_notifier.dart';

class LoginControler extends DefaultChangeNotifier {
  final UserService _userService;
  String? infoMessage;

  LoginControler({required UserService userService})
      : _userService = userService;
  
  bool get hasInfo => infoMessage != null;

  Future<void> login(String email, String password) async {
    try {
      showLoadingAndResetState();
      infoMessage = null;
      notifyListeners();
      final user = _userService.login(email, password);

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