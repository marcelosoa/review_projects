import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository {
  Future<User?> register(String name, String password);
  Future<User?> login(String name, String password);
}