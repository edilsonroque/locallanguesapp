// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextFieldLogin({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: const Color.fromARGB(255, 202, 202, 202),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey.shade700, fontSize: 18),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
