import 'package:flutter/material.dart';
import 'package:review_projects/app/modules/auth/login/login_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyPasswords',
      home: LoginPage(),
    );
  }
}
