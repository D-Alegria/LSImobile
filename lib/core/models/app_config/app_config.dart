import 'package:json_annotation/json_annotation.dart';

part 'app_config.g.dart';

@JsonSerializable(nullable: false)
class AppConfig {
  @JsonKey(name: "base_url")
  final String baseUrl;
  @JsonKey(name: "api_key")
  final String apiKey;

  AppConfig(this.baseUrl, this.apiKey);

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AppConfigToJson(this);
}
