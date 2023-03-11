

abstract class CounterEvents{
  final int factor;

  CounterEvents(this.factor);
}

class IncrementEvent extends CounterEvents{
  IncrementEvent(super.factor);
}

class DecrementEvent extends CounterEvents{
  DecrementEvent(super.factor);
}