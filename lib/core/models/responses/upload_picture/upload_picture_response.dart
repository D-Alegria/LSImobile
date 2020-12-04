import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/responses/response/response.dart';

part 'upload_picture_response.g.dart';

@JsonSerializable()
class UploadPictureResponse extends Response {
  final _Data data;
  final _Result result;

  UploadPictureResponse({this.result, this.data, String message, bool status})
      : super(message: message, status: status);

  factory UploadPictureResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadPictureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UploadPictureResponseToJson(this);
}

@JsonSerializable()
class _Data {
  final String filename;

  _Data({this.filename});

  factory _Data.fromJson(Map<String, dynamic> json) => _$_DataFromJson(json);

  Map<String, dynamic> toJson() => _$_DataToJson(this);
}

@JsonSerializable()
class _Result {
  @JsonKey(name: "asset_id")
  final String assetId;
  @JsonKey(name: "public_id")
  final String publicId;
  final num version;
  @JsonKey(name: "version_id")
  final String versionId;
  final String signature;
  final num width;
  final num height;
  final String format;
  @JsonKey(name: "resource_type")
  final String resourceType;
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  final List tags;
  final num bytes;
  final String type;
  final String etag;
  final bool placeholder;
  final String url;
  @JsonKey(name: "secure_url")
  final String secureUrl;
  @JsonKey(name: "original_filename")
  final String originalFilename;

  _Result({
    this.assetId,
    this.publicId,
    this.version,
    this.versionId,
    this.signature,
    this.width,
    this.height,
    this.format,
    this.resourceType,
    this.createdAt,
    this.tags,
    this.bytes,
    this.type,
    this.etag,
    this.placeholder,
    this.url,
    this.secureUrl,
    this.originalFilename,
  });

  factory _Result.fromJson(Map<String, dynamic> json) =>
      _$_ResultFromJson(json);

  Map<String, dynamic> toJson() => _$_ResultToJson(this);
}
