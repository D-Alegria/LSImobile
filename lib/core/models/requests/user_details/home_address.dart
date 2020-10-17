import 'package:json_annotation/json_annotation.dart';

part 'home_address.g.dart';

@JsonSerializable(nullable: false)
class HomeAddress {
  @JsonKey(name: "home_landmark")
  final String homeLandmark;
  @JsonKey(name: "home_address")
  final String homeAddress;
  @JsonKey(name: "home_state")
  final String homeState;
  @JsonKey(name: "home_lga")
  final String homeLga;
  @JsonKey(name: "home_country")
  final String homeCountry;
  @JsonKey(name: "time_at_current_address")
  final String timeAtCurrentAddress;
  @JsonKey(name: "nature_of_accomodation")
  final String natureOfAccomodation;
  @JsonKey(name: "home_country_text")
  final String homeCountryText;
  @JsonKey(name: "home_state_text")
  final String homeStateText;
  @JsonKey(name: "home_lga_text")
  final String homeLgaText;
  @JsonKey(name: "resident_years")
  final String residentYears;

  HomeAddress({
    this.homeLandmark,
    this.homeAddress,
    this.homeState,
    this.homeLga,
    this.homeCountry,
    this.timeAtCurrentAddress,
    this.natureOfAccomodation,
    this.homeCountryText,
    this.homeStateText,
    this.homeLgaText,
    this.residentYears,
  });

  factory HomeAddress.fromJson(Map<String, dynamic> json) =>
      _$HomeAddressFromJson(json);

  Map<String, dynamic> toJson() => _$HomeAddressToJson(this);
}
