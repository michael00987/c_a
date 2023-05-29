import 'package:flutter/material.dart';
import 'package:test_study/domain/usecase.dart';

class CounterViewModel extends ChangeNotifier {
  CounterViewModel(this.usecase);
  final Usecase usecase;

  int counter = 5;
  void incrementCounter() async {
    counter++;
    var result = await usecase.increase(counter);
    print(result.counter);
    notifyListeners();
    // http => counter update
  }
}

// class CounterBinding extends InheritedWidget {
//   const CounterBinding({
//     Key? key,
//     required this.child,
//     required this.viewModel,
//   }) : super(key: key, child: child);

//   final Widget child;

//   final CounterViewModel viewModel;

//   static CounterBinding of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<CounterBinding>()!;
//   }

//   @override
//   bool updateShouldNotify(CounterBinding oldWidget) =>
//       // viewModel != oldWidget.viewModel;
//       true;
// }
