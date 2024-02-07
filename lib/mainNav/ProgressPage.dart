import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF021E47),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Você ainda não começou a aprender \numa língua local moçambicana. \nComece agora e meça o seu \nprogresso aqui',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 40,),
              Image.asset('lib/images/progress.png', height: 180,),
            ],
          ),
        ),
      ),
    );
  }
}
