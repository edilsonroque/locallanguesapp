// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LearningBootom1 extends StatefulWidget {
  const LearningBootom1({
    super.key, 
    required this.title,
    required this.onTap,
    });

  final Function()? onTap;
  final String title;

  @override
  State<LearningBootom1> createState() => _LearningBootom1State();
}

class _LearningBootom1State extends State<LearningBootom1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/learnicone.png',
                color: Color(0xFF227CFF),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF227CFF),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
