import '../../../state_management/bloc.dart';
import 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc(super.initialState) {

    on<IncrementEvent>(
      _onIncrement
    );

    on<DecrementEvent>(
        _onDecrement
        );
  }

  void _onIncrement(IncrementEvent event, Emitter<int> emit){
    emit(state + event.factor);
  }

  void _onDecrement(DecrementEvent event, Emitter<int> emit){
    emit(state - event.factor);
  }

}
