import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:review_projects/app/modules/auth/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF3D3D3D),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFF3D3D3D),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
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
                        color:
                            Colors.white), // Define a cor do texto como branco
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
                        color:
                            Colors.white), // Define a cor do texto como branco
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
                        color:
                            Colors.white), // Define a cor do texto como branco
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
                      suffixIcon:
                          Icon(Icons.numbers_sharp, color: Colors.white),
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
                    print('alo');
                    final email = _emailController.text.trim();
                    final password = _passwordController.text.trim();
                    final formValidCreate = 
                    _formKey.currentState?.validate() ?? false;
                    if (formValidCreate) {
                      context.read<RegisterController>().createUser(email, password);
                    }
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
      ),
    );
  }
}
