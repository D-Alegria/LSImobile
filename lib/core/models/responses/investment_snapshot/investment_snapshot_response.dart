import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'investment_snapshot_response.g.dart';

@JsonSerializable()
class InvestmentSnapshotResponse {
  final InvestmentSnapshotData data;

  InvestmentSnapshotResponse({this.data});

  factory InvestmentSnapshotResponse.fromJson(Map<String, dynamic> json) =>
      _$InvestmentSnapshotResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvestmentSnapshotResponseToJson(this);
}
