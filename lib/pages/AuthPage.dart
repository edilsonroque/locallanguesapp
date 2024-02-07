import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:locallanguagesapp/pages/HomePage.dart';
import 'package:locallanguagesapp/pages/LoginOrRegisterPage.dart';
import 'package:locallanguagesapp/pages/LoginPage.dart';
import 'package:locallanguagesapp/pages/SignUpPage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            
            // user is logged in
            if(snapshot.hasData){
                return HomePage();
            }

            // user is not logged in
            else {
              return LoginOrRegisterPage();
            }

          }
        ),
    );
  }
}