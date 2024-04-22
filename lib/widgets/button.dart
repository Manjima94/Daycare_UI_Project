import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final Color color;
  final Color textcolor;
  final double textsize;
  final FontWeight textweight;
  
  const Button({
    required this.text,
    required this.onpressed,
    this.color =Colors.white,
    this.textsize=15,
    this.textcolor =Colors.black,
    this.textweight=FontWeight.normal,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
