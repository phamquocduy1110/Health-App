import 'package:bruhh/cubit/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialStates()) {
    emit(WellcomeState());
  }
}
