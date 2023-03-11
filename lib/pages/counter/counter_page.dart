import 'package:contador_con_flutter/pages/counter/bloc/counter_bloc.dart';
import 'package:contador_con_flutter/pages/counter_cubit.dart';
import 'package:flutter/material.dart';

import 'bloc/counter_events.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
 final _bloc = CounterBloc(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<int>(
          stream: _bloc.stream,
          initialData: _bloc.state,
          builder: (_, snapshot) => Text(
            '${_bloc.state}',
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _bloc.add(IncrementEvent(10));
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
