

import 'dart:developer';

import 'package:bloc_patterns/Counter_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cubit_coun extends Cubit<Counter_model>{
  Cubit_coun() : super(Counter_model(Counter: 0));

  
  
  
  void increament() => emit(Counter_model(Counter: state.Counter + 1));
  void decreament() => emit(Counter_model(Counter: state.Counter - 1));
  
}