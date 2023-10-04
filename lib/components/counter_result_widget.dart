import 'package:flutter/material.dart';
import 'package:game/components/text_header.dart';
class CounterResultWidget extends StatelessWidget {
  String name ;
  int counter ;
   CounterResultWidget({required this.name,required this.counter,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
    child: Column(
    children: [
    TextHeader(text: name, size: 18,isBold: true),
    const SizedBox(height: 15,),
    TextHeader(text: '$counter', size:18,isBold: false,)
    ],
    ));
  }
}
