import 'dart:math';

import 'package:flutter/material.dart';
import 'package:review_projects/app/core/events/password_bloc.dart';
import 'package:review_projects/app/core/events/password_events.dart';
import 'package:review_projects/app/core/models/password/password.dart';
import 'package:review_projects/app/core/state/password_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PasswordBloc bloc;

  void initState() {
    super.initState();
    bloc = PasswordBloc();
    bloc.inputPassword.add(LoadPasswordEvent());
  }

  void dispose() {
    bloc.inputPassword.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              bloc.inputPassword.add(
              AddPasswordEvent(password: Password(nameFrom: 'Reddit', confirmPassword: '123', password: '123')));
            }, 
            icon: Icon(Icons.add)
            )
        ],
      title: const Text('Home'),
      backgroundColor: const Color(0XFF3D3D3D),
      ),
      backgroundColor: const Color(0XFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: StreamBuilder<PasswordState>(
          stream: bloc.stream,
          builder: (context, snapshot) {
            final passwordList = snapshot.data?.password ?? [];
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  child: ClipRRect(
                    child: Text(passwordList[index].nameFrom.substring(0, 1)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                title: Text(passwordList[index].nameFrom),
                subtitle: Text(passwordList[index].password),
                trailing: IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    bloc.inputPassword.add(
                      RemovePasswordEvent(password: passwordList[index])
                    );
                  },
                ),
              ), 
              separatorBuilder: (_, __) => const Divider(), 
              itemCount: passwordList.length
              );
          } ,
        )
      ),
    );
  }
}