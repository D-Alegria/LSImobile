import 'package:json_annotation/json_annotation.dart';

part 'lending_settings.g.dart';

@JsonSerializable()
class LendingSettings {
  @JsonKey(name: "DEFAULT_INTEREST_RATE")
  final String defaultInterestRate;
  @JsonKey(name: "MAXIMUM_REQUEST_PRINCIPAL")
  final String maximumRequestPrincipal;
  @JsonKey(name: "PREFERRED_OCCUPATION_LIST")
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
