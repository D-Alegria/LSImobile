import 'package:json_annotation/json_annotation.dart';

part 'reference_id_request.g.dart';

@JsonSerializable()
class ReferenceIdRequest {
  final String token;
  final String reference;

  ReferenceIdRequest({this.token, this.reference});

  factory ReferenceIdRequest.fromJson(Map<String, dynamic> json) =>
      _$ReferenceIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReferenceIdRequestToJson(this);
}
