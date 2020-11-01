import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'value.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class Value extends HiveObject{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;

  Value({this.id, this.name});

  factory Value.fromJson(Map<String, dynamic> json) =>
      _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
