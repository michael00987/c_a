import 'package:test_study/domain/model.dart';

abstract class Repository {
  Future<CounterModel> increase(int counter);
}
