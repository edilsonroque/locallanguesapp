// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:locallanguagesapp/components/BtnCategoria.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({super.key});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF021E47),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Explorador',
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Altura da linha divisória
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              color: const Color.fromARGB(
                  255, 169, 169, 169), // Cor da linha divisória
              height: 0.5, // Altura da linha divisória
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF021E47),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Row(
          children: [
            BtnCategoria(text: 'Pronomes',),
            SizedBox(width: 20,),
            BtnCategoria(text: 'Saudações',),

          
          ],
        ),
      ),
    );
  }
}
