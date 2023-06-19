import 'package:firebase_auth/firebase_auth.dart';
import 'package:review_projects/app/core/repositories/user/user_repository.dart';
import 'package:review_projects/app/services/user/user_service.dart';

class UserServiceImpl implements UserService {
  final UserRepository _userRepository;

  UserServiceImpl({required UserRepository userRepository}) : _userRepository = userRepository;

  @override
  Future<User?> login(String email, String password) => _userRepository.login(email, password);

  @override
  Future<User?> register(String email, String password) => _userRepository.register(email, password);
  
}