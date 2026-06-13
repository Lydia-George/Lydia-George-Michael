import 'package:bloc/bloc.dart';

import 'counter_state.dart';

class CounterLogic extends Cubit<CounterState> {
  CounterLogic() : super(InitState());

  int varCounter =0;

  plusCounter(){
    varCounter++;
    emit(PCounter());
  }

  minusCounter(){
    varCounter--;
    emit(MCounter());
  }
  resetCounter(){
    varCounter =0;
    emit(RCounter());
  }

}