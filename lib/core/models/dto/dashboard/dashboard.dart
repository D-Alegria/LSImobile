import 'package:json_annotation/json_annotation.dart';

part 'dashboard.g.dart';

@JsonSerializable()
class Dashboard {
  @JsonKey(name: "total_loans")
  final String totalLoans;
  @JsonKey(name: "active_loans")
  final String activeLoans;
  @JsonKey(name: "pending_payments")
  final String pendingPayments;

  Dashboard({this.totalLoans, this.activeLoans, this.pendingPayments});

  factory Dashboard.fromJson(Map<String, dynamic> json) =>
      _$DashboardFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardToJson(this);
}
