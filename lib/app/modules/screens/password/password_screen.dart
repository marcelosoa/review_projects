import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/bloc/password_bloc.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                var passwordController;
                context.read<PasswordBloc>().add(
                    BlocEventAddNewPassword(password: passwordController.text));
              },
              icon: const Icon(Icons.add))
        ],
        title: const Text('Home'),
        backgroundColor: const Color(0XFF3D3D3D),
      ),
      backgroundColor: const Color(0XFFF5F5F5),
      body: BlocBuilder<PasswordBloc, BlocState>(
        builder: (context, state) {
          if (state is BlocStateData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final password = state.passwords[index];
                return ListTile(
                  title: Text(password[index]),
                );
              },
              itemCount: state.passwords.length,
            );
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
