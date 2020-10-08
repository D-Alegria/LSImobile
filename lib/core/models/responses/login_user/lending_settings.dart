import 'package:json_annotation/json_annotation.dart';

part 'lending_settings.g.dart';

@JsonSerializable(nullable: false)
class LendingSettings {
  final String defaultInterestRate;
  final String maximumRequestPrincipal;
  final List<String> preferredOccupationList;

  LendingSettings({
    this.defaultInterestRate,
    this.maximumRequestPrincipal,
    this.preferredOccupationList,
  });

  factory LendingSettings.fromJson(Map<String, dynamic> json) =>
      _$LendingSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$LendingSettingsToJson(this);
}