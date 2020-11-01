import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';

part 'get_value_response.g.dart';

@JsonSerializable()
class GetValueResponse {
  final bool status;
  final List<Value> data;

  GetValueResponse({this.data, this.status});

  factory GetValueResponse.fromJson(Map<String, dynamic> json) =>
      _$GetValueResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetValueResponseToJson(this);
}
