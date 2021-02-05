import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'check_user_exists_request.g.dart';

@JsonSerializable()
class CheckUserExistsRequest {
  final String identity;

  CheckUserExistsRequest({@required this.identity});

  factory CheckUserExistsRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckUserExistsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CheckUserExistsRequestToJson(this);
}