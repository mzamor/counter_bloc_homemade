
import 'package:contador_con_flutter/state_management/cubit.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit():super(10);

  void increment(){
    emit(state + 1);
  }

}