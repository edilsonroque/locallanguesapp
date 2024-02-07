// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:locallanguagesapp/components/MapContainer.dart';
import 'package:locallanguagesapp/mainNav/NavigationPageMain.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  //final user = FirebaseAuth.instance.currentUser!;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF021E47),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 55,),
              Text(
                'Se és estudante, entusiasta, turista ou \nprofissional apaixonado pela cultura \nmoçambicana, chegou a hora de \naprofundar seu conhecimento e \naprender ainda mais.',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              MapContainer()
            ],
          ),
        ),
      ),
    );
  }
}
