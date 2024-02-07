// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:locallanguagesapp/components/ButtonLogin.dart';
import 'package:locallanguagesapp/components/SquareTitle.dart';
import 'package:locallanguagesapp/components/TextFieldLogin.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key, required this.onTap});

  final Function()? onTap;

  final emailSignupController = TextEditingController();
  final passwordSignupController = TextEditingController();
  final confirmPasswordSignupController = TextEditingController();

  // sign user in method
  void signUserUp(BuildContext context) async {
    try {
      if (passwordSignupController.text ==
          confirmPasswordSignupController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailSignupController.text,
          password: passwordSignupController.text,
        );
      } else {
        // show error message, passwords don't match
        wrongErrorMessage(context, 'Palavras-passe diferentes');
      }
    } on FirebaseAuthException catch (e) {
      print('Erro de autenticação: ${e.code} - ${e.message}');
      // Mostra a mensagem de erro
      wrongErrorMessage(context, 'Erro de autenticação');
    } finally {
      // Limpa os controladores após o login
      emailSignupController.clear();
      passwordSignupController.clear();
    }
  }

  void wrongErrorMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 165, 169, 174),
          content: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              message,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
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
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                //logo
                Image.asset(
                  'lib/images/logo.png',
                  width: 160,
                ),

                //username textfield
                TextFieldLogin(
                  controller: widget.emailSignupController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                SizedBox(height: 15),

                //password textfield
                TextFieldLogin(
                  controller: widget.passwordSignupController,
                  hintText: 'Palavra-Passe',
                  obscureText: true,
                ),

                SizedBox(height: 15),

                TextFieldLogin(
                  controller: widget.confirmPasswordSignupController,
                  hintText: 'Confirme a palavra passe',
                  obscureText: true,
                ),

                SizedBox(height: 15),

                // sign in button
                ButtonLogin(
                  onTap: () => widget.signUserUp(context),
                  text: 'Inscrever-se',
                ),

                SizedBox(height: 20),

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

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTitle(imagePath: 'lib/images/google.png'),
                    //apple button
                    SquareTitle(imagePath: 'lib/images/apple.png'),
                  ],
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Já possui uma conta ?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 6),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Conecte-se agora',
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
