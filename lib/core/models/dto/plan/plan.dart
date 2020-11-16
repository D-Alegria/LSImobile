import 'package:json_annotation/json_annotation.dart';

part 'plan.g.dart';

@JsonSerializable()
class Plan {
  @JsonKey(name: "product_id")
  final String productId;
  final String duration;
  final String amount;

  Plan({this.productId, this.amount, this.duration});

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);

  Map<String, dynamic> toJson() => _$PlanToJson(this);
}
