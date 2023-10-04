import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/blocs/game_cubit/game_cubit.dart';
import 'package:game/screens/home_screen.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => GameCubit(),)
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
