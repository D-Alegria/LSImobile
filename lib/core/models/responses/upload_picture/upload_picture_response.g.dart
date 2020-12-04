// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_picture_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadPictureResponse _$UploadPictureResponseFromJson(
    Map<String, dynamic> json) {
  return UploadPictureResponse(
    result: json['result'] == null
        ? null
        : _Result.fromJson(json['result'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : _Data.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String,
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$UploadPictureResponseToJson(
        UploadPictureResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'result': instance.result,
    };

_Data _$_DataFromJson(Map<String, dynamic> json) {
  return _Data(
    filename: json['filename'] as String,
  );
}

Map<String, dynamic> _$_DataToJson(_Data instance) => <String, dynamic>{
      'filename': instance.filename,
    };

_Result _$_ResultFromJson(Map<String, dynamic> json) {
  return _Result(
    assetId: json['asset_id'] as String,
    publicId: json['public_id'] as String,
    version: json['version'] as num,
    versionId: json['version_id'] as String,
    signature: json['signature'] as String,
    width: json['width'] as num,
    height: json['height'] as num,
    format: json['format'] as String,
    resourceType: json['resource_type'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    tags: json['tags'] as List,
    bytes: json['bytes'] as num,
    type: json['type'] as String,
    etag: json['etag'] as String,
    placeholder: json['placeholder'] as bool,
    url: json['url'] as String,
    secureUrl: json['secure_url'] as String,
    originalFilename: json['original_filename'] as String,
  );
}

Map<String, dynamic> _$_ResultToJson(_Result instance) => <String, dynamic>{
      'asset_id': instance.assetId,
      'public_id': instance.publicId,
      'version': instance.version,
      'version_id': instance.versionId,
      'signature': instance.signature,
      'width': instance.width,
      'height': instance.height,
      'format': instance.format,
      'resource_type': instance.resourceType,
      'created_at': instance.createdAt?.toIso8601String(),
      'tags': instance.tags,
      'bytes': instance.bytes,
      'type': instance.type,
      'etag': instance.etag,
      'placeholder': instance.placeholder,
      'url': instance.url,
      'secure_url': instance.secureUrl,
      'original_filename': instance.originalFilename,
    };
