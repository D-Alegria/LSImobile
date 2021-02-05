// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$_$_UserDataFromJson(Map<String, dynamic> json) {
  return _$_UserData(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : UserDetailsRequest.fromJson(json['data'] as Map<String, dynamic>),
    isIndividual: json['is_individual'] as bool,
  );
}

Map<String, dynamic> _$_$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
      'is_individual': instance.isIndividual,
    };
