import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:review_projects/app/core/bloc/password_bloc.dart';
import 'package:review_projects/app/modules/home/home_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF3D3D3D),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFF3D3D3D), // Define o background como preto
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'Nome Completo',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.person, color: Colors.white),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white, // Define a cor da linha como branco
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'Senha',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.password, color: Colors.white),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white, // Define a cor da linha como branco
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'Confirmar Senha',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.password, color: Colors.white),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white, // Define a cor da linha como branco
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(
                      color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.email, color: Colors.white),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white, // Define a cor da linha como branco
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Cpf',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.numbers_sharp, color: Colors.white),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  final email = _emailController.text;
                  final password = _passwordController.text;
                  context.read<PasswordBloc>().add(BlocEventCreateAccount(email: email, password: password));
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Container(
                  height: 65,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0XFFF5F5F5),
                  ),
                  child: const Center(
                    child: Text(
                      'Conectar',
                      style: TextStyle(color: Color(0XFF3D3D3D)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
