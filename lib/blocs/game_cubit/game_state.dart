part of 'game_cubit.dart';

@immutable
abstract class GameState {}

class GameInitial extends GameState {}
class MakeCpuChoiceState extends GameState {}
class CalculateResultState extends GameState {}
class ResultCounterState extends GameState {}
