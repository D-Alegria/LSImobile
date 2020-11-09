import 'package:json_annotation/json_annotation.dart';

part 'request_id_request.g.dart';

@JsonSerializable()
class RequestIdRequest {
  final String token;
  @JsonKey(name: "request_id")
  final String requestId;

  RequestIdRequest({this.token, this.requestId});

  factory RequestIdRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RequestIdRequestToJson(this);
}
