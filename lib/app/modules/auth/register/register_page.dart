import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF3D3D3D),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFF000000), // Define o background como preto
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'nome completo',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.person),
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
                  style: const TextStyle(color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'senha',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.password),
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
                  style: const TextStyle(color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'confirmar senha',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.password),
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
                  style: const TextStyle(color: Colors.white), // Define a cor do texto como branco
                  decoration: const InputDecoration(
                    hintText: 'email',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.email),
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
                    hintText: 'cpf',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.numbers_sharp),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
