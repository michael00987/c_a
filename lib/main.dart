import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_study/data/repository.dart';
import 'package:test_study/data/source.dart';
import 'package:test_study/domain/usecase.dart';
import 'package:test_study/presentation/counter_screen.dart';
import 'package:test_study/presentation/counter_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) =>
            CounterViewModel(Usecase(RepositoryImpl(Source()))),
        child: const MyHomePage(),
      ),
    );
  }
}
