import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../enums/game_enum.dart';
import '../../enums/result_enum.dart';
import '../../screens/result_screen.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());
  static GameCubit get(context) => BlocProvider.of(context);

  GameEnum ?userChoice ;
  GameEnum  ?cpuChoice ;
  ResultEnum ? result;
  int playerCounter = 0 ;
  int cpuCounter = 0;

  makeCpuChoice(){
    Random random = Random();
    int randomNumber = random.nextInt(3);
    cpuChoice = GameEnum.values[randomNumber];
    emit(MakeCpuChoiceState());
  }

   calculateResult(context){
    if(userChoice == GameEnum.rock){
      if(cpuChoice == GameEnum.rock){
        result = ResultEnum.draw;
      }
      else if (cpuChoice == GameEnum.paper){
        result = ResultEnum.lose;
      }
      else if (cpuChoice == GameEnum.scissor){
        result = ResultEnum.win;
      }
    }

    else if(userChoice == GameEnum.paper){
      if(cpuChoice == GameEnum.paper){
        result = ResultEnum.draw;
      }
      else if (cpuChoice == GameEnum.scissor){
        result = ResultEnum.lose;
      }
      else if (cpuChoice == GameEnum.rock){
        result = ResultEnum.win;
      }
    }

    else if(userChoice == GameEnum.scissor){
      if(cpuChoice == GameEnum.scissor){
        result = ResultEnum.draw;
      }
      else if (cpuChoice == GameEnum.rock){
        result = ResultEnum.lose;
      }
      else if (cpuChoice == GameEnum.paper){
        result = ResultEnum.win;
      }
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(resultEnum:result!,userChoice:userChoice! ,cpuChoice:cpuChoice!,)));
    emit(CalculateResultState());
  }

   resultCounter(){
    if (result == ResultEnum.win){
      playerCounter ++;
    }
    else if (result == ResultEnum.lose){
      cpuCounter ++ ;
    }
    emit(ResultCounterState());
  }
}
