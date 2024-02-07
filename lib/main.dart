// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:locallanguagesapp/changanamodule/ExplorerPage.dart';
import 'package:locallanguagesapp/mainNav/NavigationPageMain.dart';
import 'package:locallanguagesapp/pages/AuthPage.dart';
import 'package:locallanguagesapp/pages/HomePage.dart';
import 'package:locallanguagesapp/pages/LoginOrRegisterPage.dart';
import 'package:locallanguagesapp/pages/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:locallanguagesapp/pages/SignUpPage.dart';
import 'firebase_options.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationPageMain(),
      routes: {
        '/explorerpage': (context) => ExplorerPage(),
      }
    );
  }
}