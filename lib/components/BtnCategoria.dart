import 'package:flutter/material.dart';

class BtnCategoria extends StatefulWidget {
  const BtnCategoria({
    super.key,
    required this.text
    });

  final String text;

  @override
  State<BtnCategoria> createState() => _BtnCategoriaState();
}

class _BtnCategoriaState extends State<BtnCategoria> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFF227CFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: Text(widget.text, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),)),
    );
  }
}
