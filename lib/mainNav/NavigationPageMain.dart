// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:locallanguagesapp/mainNav/LearningPage.dart';
import 'package:locallanguagesapp/mainNav/ProgressPage.dart';
import 'package:locallanguagesapp/pages/HomePage.dart';
import 'package:locallanguagesapp/pages/LoginOrRegisterPage.dart';
import 'package:locallanguagesapp/pages/LoginPage.dart';

class NavigationPageMain extends StatefulWidget {
  const NavigationPageMain({super.key});

  @override
  State<NavigationPageMain> createState() => _NavigationPageMainState();
}

class _NavigationPageMainState extends State<NavigationPageMain> {
  final List _pages = [HomePage(), LearningPage(), ProgressPage()];

  void signUserOut() {
    print('Logout pressed');
    FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginOrRegisterPage(),
      ),
    );
  }

  int _selectedIndex = 0;

  void _bottomNavigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF021E47),
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/logo.png',
                height: 220,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFD9D9D9),
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF021E47),
                ),
                child: Image.asset('lib/images/logo.png')),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                // Adicione o código que deseja executar ao tocar em 'Perfil'
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Definições'),
              onTap: () {
                // Adicione o código que deseja executar ao tocar em 'Definições'
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre Nós'),
              onTap: () {
                // Adicione o código que deseja executar ao tocar em 'Sobre Nós'
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF021E47),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFD9D9D9),
        currentIndex: _selectedIndex,
        onTap: _bottomNavigationBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF227CFF),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Color(0xFF227CFF),
              ),
              label: 'Learn'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.hourglass_full,
                color: Color(0xFF227CFF),
              ),
              label: 'Progres'),
        ],
      ),
    );
  }
}
