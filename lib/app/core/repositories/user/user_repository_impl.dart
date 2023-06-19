import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:review_projects/app/core/repositories/user/user_repository.dart';
import 'package:review_projects/app/services/auth/auth_service.dart';

import '../../exception/auth_exception.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;
  UserRepositoryImpl({required FirebaseAuth firebaseAuth}) : _firebaseAuth = firebaseAuth;


  @override
  Future<User?> login(String email, String password) async {
    try {
      final UserCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password
      );
      return UserCredential.user;
    } on PlatformException catch (e) {
      throw AuthException(message: e.message ?? 'Erro ao realizar login');
    } on FirebaseAuthException catch (e) {
      throw AuthException(message: e.message ?? 'Erro ao realizar login');
    }
  }

  @override
  Future<User?> register(String email, String password) async {
   try {
    final UserCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: password
    );
    return UserCredential.user;
   } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw AuthException(message: 'Email já existente');
      } else {
        throw AuthException(message: e.message?? 'Erro ao realizar register');
      }
   }
  }

}