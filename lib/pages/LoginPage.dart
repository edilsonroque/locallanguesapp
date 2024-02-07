// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:locallanguagesapp/components/ButtonLogin.dart';
import 'package:locallanguagesapp/components/SquareTitle.dart';
import 'package:locallanguagesapp/components/TextFieldLogin.dart';
import 'package:locallanguagesapp/mainNav/NavigationPageMain.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key, required this.onTap});

  final Function()? onTap;

  // text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) async {
    print('Login iniciando...');

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => NavigationPageMain(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print('Erro de autenticação: ${e.code} - ${e.message}');
      // Mostra a mensagem de erro
      wrongErrorMessage(context, 'Credênciais incorretas');
    } finally {
      // Limpa os controladores após o login
      emailController.clear();
      passwordController.clear();
    }
  }

  void wrongErrorMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 165, 169, 174),
          title: Text(
            'Erro ao efetuar login',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(message, style: TextStyle(color: Colors.white)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF227CFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo
                Image.asset(
                  'lib/images/logo.png',
                  width: 200,
                ),

                // username textfield
                TextFieldLogin(
                  controller: widget.emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                SizedBox(height: 15),

                // password textfield
                TextFieldLogin(
                  controller: widget.passwordController,
                  hintText: 'Palavra-Passe',
                  obscureText: true,
                ),

                SizedBox(height: 15),

                // forgot password ?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Esqueceu palavra-passe ?',
                        style: TextStyle(color: Color(0xFF021e47)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),

                // sign in button
                ButtonLogin(
                  onTap: () => widget.signUserIn(context),
                  text: 'Entrar',
                ),

                SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Ou continue com',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),

                // google + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTitle(imagePath: 'lib/images/google.png'),
                    // apple button
                    SquareTitle(imagePath: 'lib/images/apple.png'),
                  ],
                ),

                SizedBox(height: 50),

                // not a member ? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Não está inscrito ?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 6),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Inscreva-se',
                        style: TextStyle(
                            color: Color(0xFF021e47),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
