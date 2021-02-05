import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'request_id_request.g.dart';

@JsonSerializable()
class RequestIdRequest extends TokenRequest {
  @JsonKey(name: "request_id")
  final String requestId;

  RequestIdRequest({String token, this.requestId}) : super(token: token);

  factory RequestIdRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RequestIdRequestToJson(this);
}
