import 'package:json_annotation/json_annotation.dart';

part 'loan_history.g.dart';

@JsonSerializable()
class LoanHistory {
  final List result;
  final int size;

  LoanHistory({this.result, this.size});

  factory LoanHistory.fromJson(Map<String, dynamic> json) =>
      _$LoanHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$LoanHistoryToJson(this);
}