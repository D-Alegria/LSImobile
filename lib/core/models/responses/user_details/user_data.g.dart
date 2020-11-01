// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    status: json['status'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : UserDetailsRequest.fromJson(json['data'] as Map<String, dynamic>),
    isIndividual: json['is_individual'] as bool,
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'is_individual': instance.isIndividual,
    };
