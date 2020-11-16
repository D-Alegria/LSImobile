// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) {
  return AppConfig(
    json['base_url'] as String,
    json['api_key'] as String,
    json['email'] as String,
    json['phone'] as String,
    json['whats_app'] as String,
  );
}

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
      'base_url': instance.baseUrl,
      'api_key': instance.apiKey,
      'email': instance.email,
      'phone': instance.phone,
      'whats_app': instance.whatsApp,
    };
