import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard.freezed.dart';

part 'dashboard.g.dart';

@freezed
abstract class Dashboard with _$Dashboard {
  @JsonSerializable(explicitToJson: true)
  factory Dashboard({
    @nullable @JsonKey(name: "total_loans") String totalLoans,
    @nullable @JsonKey(name: "active_loans") String activeLoans,
    @nullable @JsonKey(name: "pending_payments") dynamic pendingPayments,
  }) = _Dashboard;

  factory Dashboard.fromJson(Map<String, dynamic> json) =>
      _$DashboardFromJson(json);
}
