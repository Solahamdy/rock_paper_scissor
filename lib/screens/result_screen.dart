import 'package:flutter/material.dart';
import 'package:game/components/image_widget.dart';
import 'package:game/components/text_header.dart';
import 'package:game/enums/game_enum.dart';
import 'package:game/enums/result_enum.dart';
class ResultScreen extends StatelessWidget {
  final ResultEnum resultEnum ;
  final GameEnum userChoice ;
  final GameEnum cpuChoice ;


  ResultScreen({required this.resultEnum, required this.userChoice, required this.cpuChoice, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff1b2b4c),
      body: Center(
        child: Column(mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            TextHeader(text:resultEnum.name , isBold: true, size: 30),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    TextHeader(text: 'Player', isBold: false, size: 25),
                    const SizedBox(height: 20,),
                    ImageWidget(image: userChoice.name)
                  ],
                ),
                Column(
                  children: [
                    TextHeader(text: 'CPU', isBold: false, size: 25),
                    const SizedBox(height: 20,),
                    ImageWidget(image: cpuChoice.name)
                  ],
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
