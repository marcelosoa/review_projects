import 'package:flutter/material.dart';
import 'package:review_projects/app/modules/auth/register/register_page.dart';

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
      backgroundColor: const Color(0XFF3D3D3D),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text('Login',
                            style: TextStyle(
                                color: Color(0XFFFFFFFF), fontSize: 40)),
                        Text(
                          'welcome back',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0XFFF5F5F5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0XFFb5b1b0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: 'email@example.com',
                              suffixIcon: Icon(Icons.email),
                              hintStyle: TextStyle(color: Color(0XFFF5F5F5)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15), // Adiciona um espaço
                        const SizedBox(height: 15), // Adiciona um espaço
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0XFFb5b1b0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              hintText: 'password',
                              suffixIcon: Icon(Icons.password_outlined),
                              hintStyle: TextStyle(color: Color(0xffF5F5F5)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 45),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) => const RegisterPage())
                                );
                              },
                              child: const Text('Criar conta'),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text('Esqueci minha senha'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 45),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 65,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0XFF3D3D3D),
                            ),
                            child: const Center(
                              child: Text(
                                'conectar',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
