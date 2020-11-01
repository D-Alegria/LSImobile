import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_address.freezed.dart';

part 'home_address.g.dart';

@freezed
abstract class HomeAddress with _$HomeAddress {
  @JsonSerializable(explicitToJson: true)
  factory HomeAddress({
    @nullable @JsonKey(name: "home_landmark") String homeLandmark,
    @nullable @JsonKey(name: "home_address") String homeAddress,
    @nullable @JsonKey(name: "home_state") String homeState,
    @nullable @JsonKey(name: "home_lga") String homeLga,
    @nullable @JsonKey(name: "home_country") String homeCountry,
    @nullable @JsonKey(name: "time_at_current_address") String timeAtCurrentAddress,
    @nullable @JsonKey(name: "nature_of_accomodation") String natureOfAccomodation,
    @nullable @JsonKey(name: "home_country_text") String homeCountryText,
    @nullable @JsonKey(name: "home_state_text") String homeStateText,
    @nullable @JsonKey(name: "home_lga_text") String homeLgaText,
    @nullable @JsonKey(name: "resident_years") String residentYears,
  }) = _HomeAddress;

  factory HomeAddress.fromJson(Map<String, dynamic> json) =>
      _$HomeAddressFromJson(json);
}