import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

part 'reference_id_request.g.dart';

@JsonSerializable()
class ReferenceIdRequest extends TokenRequest {
  final String reference;

  ReferenceIdRequest({String token, this.reference}) : super(token: token);

  factory ReferenceIdRequest.fromJson(Map<String, dynamic> json) =>
      _$ReferenceIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReferenceIdRequestToJson(this);
}
