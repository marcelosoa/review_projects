import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Color(0XFFF5F5F5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 80),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Spacer(), // Espaço flexível para empurrar o conteúdo para o topo
              Transform.translate(
                offset: const Offset(0, -1), // Ajuste vertical para cima
                child: Container(
                  color: const Color(0XFF3D3D3D),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
                  margin:
                      const EdgeInsets.all(16), // Espaçamento em todos os lados
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          color: const Color(0XFFF5F5F5),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color(0XFFD9D9D9),
                                      hoverColor: const Color(0XFFD9D9D9),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(3),
                                        borderSide: const BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      hintText: 'email@example.com',
                                      suffixIcon: const Icon(Icons.email),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color(0XFFD9D9D9),
                                      hoverColor: const Color(0XFFD9D9D9),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(3),
                                        borderSide: const BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                      hintText: 'password',
                                      suffixIcon: const Icon(Icons.remove_red_eye),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                16), // Espaçamento entre o formulário e os textos
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Criar conta',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 20),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Esqueci minha senha',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0XFFF5F5F5),
                          ),
                          child: const Text(
                            'Conectar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
