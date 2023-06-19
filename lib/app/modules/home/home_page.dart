import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:review_projects/app/core/bloc/password_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            TextButton.icon(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.read<PasswordBloc>().add(
                      BlocEventAddNewPassword(password: 'aaa'),
                    );
              },
              label: const Text('Adicionar'),
            )
          ],
        ),
        body: BlocListener<PasswordBloc, BlocState>(
            listener: (context, state) {
              if (state is BlocStateData) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text('A quantidade de nomes é ${state.passwords.length}'),
                ));
              }
            },
            child: Column(
              children: [
                BlocSelector<PasswordBloc, BlocState, bool>(selector: (state) {
                  if (state is BlocStateInitial) {
                    return true;
                  }
                  return false;
                }, builder: (context, showLoader) {
                  if (showLoader) {
                    return const Expanded(
                        child: Center(child: CircularProgressIndicator()));
                  }
                  return const SizedBox.shrink();
                }),
                BlocBuilder<PasswordBloc, BlocState>(builder: (context, state) {
                  if (state is BlocStateData) {
                    return ListView.separated(
                      padding: const EdgeInsets.all(10),
                      shrinkWrap: true,
                      itemCount: state.passwords.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (context, index) {
                        final password = state.passwords[index];
                        return ListTile(
                          onTap: () {
                            context.read<PasswordBloc>().add(
                                  BlocEventRemovePassword(password: password),
                                );
                          },
                          title: Text(password),
                        );
                      },
                    );
                  }
                  return const Text('nenhum nome encontrado');
                }),
              ],
            )));
  }
}
