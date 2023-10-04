import 'package:flutter/material.dart';
class TextHeader extends StatelessWidget {
   TextHeader({required this.text ,required this.isBold,required this.size,super.key});
  String text ;
  double size ;
  bool isBold = false;

  @override
  Widget build(BuildContext context) {
    return Text(text ,style: TextStyle(color: Colors.white ,fontSize: size,
        fontWeight: isBold ? FontWeight.bold :FontWeight.normal),);
  }
}
