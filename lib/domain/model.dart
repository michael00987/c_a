import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class CounterModel with _$CounterModel {
  const factory CounterModel({
    required int counter,
  }) = _CounterModel;

  factory CounterModel.fromJson(Map<String, dynamic> json) =>
      _$CounterModelFromJson(json);
}
