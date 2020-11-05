// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Doc _$DocFromJson(Map<String, dynamic> json) {
  return Doc(
    display: json['display'] as String,
    value: json['value'] as String,
    filename: json['filename'] as String,
    name: json['name'] as String,
    uploaded: json['uploaded'] as bool,
  );
}

Map<String, dynamic> _$DocToJson(Doc instance) => <String, dynamic>{
      'display': instance.display,
      'value': instance.value,
      'filename': instance.filename,
      'name': instance.name,
      'uploaded': instance.uploaded,
    };
