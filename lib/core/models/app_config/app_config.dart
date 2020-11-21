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
  @JsonKey(name: "developer_account_password")
  final String developerAccountPassword;
  @JsonKey(name: "developer_account")
  final String developerAccount;
  @JsonKey(name: "developer_account_name")
  final String developerAccountName;
  @JsonKey(name: "bug_recipients")
  final List<String> bugRecipients;
  @JsonKey(name: "sentry_dsn")
  final String sentryDSN;
  @JsonKey(name: "paystack_test_amount")
  final String paystackTestAmount;
  @JsonKey(name: "paystack_confirm_url")
  final String paystackConfirmUrl;

  AppConfig(
    this.baseUrl,
    this.apiKey,
    this.email,
    this.phone,
    this.whatsApp,
    this.developerAccountPassword,
    this.developerAccount,
    this.bugRecipients,
    this.developerAccountName,
    this.sentryDSN,
    this.paystackTestAmount,
    this.paystackConfirmUrl,
  );

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AppConfigToJson(this);
}
