import 'package:flutter/material.dart';

class SquareTitle extends StatelessWidget {
  final String imagePath;

  const SquareTitle({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 31, 98, 198)),
        borderRadius: BorderRadius.circular(16),
        color: Color.fromARGB(255, 31, 98, 198),
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
