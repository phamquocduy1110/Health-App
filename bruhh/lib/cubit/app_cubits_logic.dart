import 'package:bruhh/cubit/app_cubits.dart';
import 'package:bruhh/cubit/app_state.dart';
import 'package:bruhh/screen/navscreen/main_screen.dart';
import 'package:bruhh/screen/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitsLogic extends StatefulWidget {
  AppCubitsLogic({Key? key}) : super(key: key);

  @override
  _AppCubitsLogicState createState() => _AppCubitsLogicState();
}

class _AppCubitsLogicState extends State<AppCubitsLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WellcomeState) {
            return MainScreen();
          } else {
            return Container();
          } 
        },
      ),
    );
  }
}
