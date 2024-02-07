// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LearningBootom extends StatefulWidget {
  const LearningBootom({
    super.key,
    required this.title,
    required this.onTap
    });

  final Function()? onTap;
  final String title;

  @override
  State<LearningBootom> createState() => _LearningBootomState();
}

class _LearningBootomState extends State<LearningBootom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 25),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Color(0xFF227CFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/images/learnicone.png'),
      
              SizedBox(width: 25,),
              
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
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
