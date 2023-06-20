import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:review_projects/app/core/bloc/password_bloc.dart';
import 'package:review_projects/app/modules/auth/login/login_page.dart';
import 'package:review_projects/app/modules/auth/register/register_page.dart';

import 'app/modules/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PasswordBloc>(
          create: (_) => PasswordBloc()..add(BlocEventFindAllPasswords()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        title: 'MyPasswords',
        home: const LoginPage(),
        routes: {
          '/register': (_) => RegisterPage(),
          '/home': (_) => HomeScreen(),
        },
      ),
    );
  }
}
