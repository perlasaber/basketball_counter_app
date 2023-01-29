import 'package:basketball_counter_app/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void counterTeam({required int number, required String team})
  {
    if(team == 'A')
      {
        teamAPoints += number;
        emit(CounterAIncrementState());
      }
    else{
      teamBPoints += number;
      emit(CounterBIncrementState());
    }
  }
}