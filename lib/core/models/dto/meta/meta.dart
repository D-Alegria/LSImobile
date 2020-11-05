import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  @JsonKey(name: "calls_this_month")
  final int callsThisMonth;
  @JsonKey(name: "free_calls_left")
  final int freeCallsLeft;

  Meta({this.callsThisMonth, this.freeCallsLeft});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
