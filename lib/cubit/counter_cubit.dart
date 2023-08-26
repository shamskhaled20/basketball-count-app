import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CubitState> {
  CounterCubit() : super(CounterIncremenAtState());

  int TeamA = 0;
  int TeamB = 0;
  void TeamAIncrement({required String Team, required int buttomNumber}) {
    if (Team == 'A') {
      TeamA += buttomNumber;
      emit(CounterIncremenAtState());
    } else {
      TeamB += buttomNumber;
      emit(CounterIncremenBtState());
    }
  }
}
