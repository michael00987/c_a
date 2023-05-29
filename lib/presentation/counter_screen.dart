import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_study/presentation/counter_view_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(
        '${context.watch<CounterViewModel>().counter}',
        style: Theme.of(context).textTheme.headline4,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterViewModel>().incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
