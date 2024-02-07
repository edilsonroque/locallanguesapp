import 'package:flutter/material.dart';
import 'package:locallanguagesapp/changanamodule/ExplorerPage.dart';
import 'package:locallanguagesapp/components/LearningBottom.dart';
import 'package:locallanguagesapp/components/LearningBottom1.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  void mostrarMensagem(String aprendizado) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text('$aprendizado estará disponível na versão 1.1.2 para '),
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF021E47),
      body: Center(
        child: ListView(
          children: [
            LearningBootom(
              title: 'A P R E N D E R\n C H A N G A N A',
              onTap: () {
                Navigator.pushNamed(context, '/explorerpage');
              },
            ),
            LearningBootom1(
              title: 'A P R E N D E R\n S E N A',
              onTap: () {
                mostrarMensagem('Sena');
              },
            ),
            LearningBootom(
              title: 'A P R E N D E R\n C H U A B O',
              onTap: () {
                mostrarMensagem('Chuabo');
              },
            ),
            LearningBootom1(
              title: 'A P R E N D E R\n N H Ú N G E',
              onTap: () {
                mostrarMensagem('Nhúngue');
              },
            ),
          ],
        ),
      ),
    );
  }
}
