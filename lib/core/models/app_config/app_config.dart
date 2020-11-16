import 'package:json_annotation/json_annotation.dart';

part 'app_config.g.dart';

@JsonSerializable()
class AppConfig {
  @JsonKey(name: "base_url")
  final String baseUrl;
  @JsonKey(name: "api_key")
  final String apiKey;
  final String email;
  final String phone;
  @JsonKey(name: "whats_app")
  final String whatsApp;

  AppConfig(this.baseUrl, this.apiKey, this.email, this.phone, this.whatsApp);

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AppConfigToJson(this);
}
