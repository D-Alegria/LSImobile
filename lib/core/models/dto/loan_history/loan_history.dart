import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/loan/loan.dart';

part 'loan_history.g.dart';

@JsonSerializable()
class LoanHistory {
  final List<Loan> result;
  final int size;

  LoanHistory({this.result, this.size});

  factory LoanHistory.fromJson(Map<String, dynamic> json) =>
      _$LoanHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$LoanHistoryToJson(this);
}
