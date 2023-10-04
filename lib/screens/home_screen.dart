
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/game_cubit/game_cubit.dart';
import 'package:game/components/counter_result_widget.dart';
import 'package:game/components/image_widget.dart';
import 'package:game/components/text_header.dart';
import 'package:game/enums/game_enum.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameCubit, GameState>(
    listener: (context, state) {
     // TODO: implement listener
    },
    builder: (context, state) {
      var cubit = GameCubit.get(context);
     return Scaffold(backgroundColor: const Color(0xff1b2b4c),
      body:  Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextHeader(text: 'ROCK', size: 25,isBold: true),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextHeader(text: 'PAPER', size: 25,isBold: true),
            ),
            TextHeader(text: 'SCISSORS', size: 25,isBold: true),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextHeader(text: ' Pick your weapon', size: 16,isBold: false),
            ),
            ImageWidget(image: 'rock',function: (){
              cubit.userChoice = GameEnum.rock;
              cubit.makeCpuChoice();
              cubit.calculateResult(context);
              cubit.resultCounter();
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageWidget(image: 'paper',function: (){
                cubit.userChoice = GameEnum.paper;
                cubit.makeCpuChoice();
                cubit.calculateResult(context);
                cubit.resultCounter();

              }),
            ),
            ImageWidget(image: 'scissor',function: (){
             cubit.userChoice = GameEnum.scissor;
              cubit.makeCpuChoice();
              cubit.calculateResult(context);
              cubit.resultCounter();
            }),

            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               CounterResultWidget(name: 'player', counter: cubit.playerCounter),
                CounterResultWidget(name: 'CPU', counter: cubit.cpuCounter)

              ],
            )

          ],
        ),
      ),
    );
  },
);
  }
}
