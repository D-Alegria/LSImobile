import 'package:json_annotation/json_annotation.dart';

part 'business_address.g.dart';

@JsonSerializable(nullable: false)
class BusinessAddress {
  @JsonKey(name: "address_type")
  final String addressType;
  @JsonKey(name: "address_type_text")
  final String addressTypeText;
  @JsonKey(name: "time_at_current_address")
  final String timeAtCurrentAddress;
  final String address;
  final String state;
  final String lga;
  @JsonKey(name: "home_state_text")
  final String homeStateText;
  @JsonKey(name: "home_lga_text")
  final String homeLgaText;

  BusinessAddress({
    this.addressType,
    this.addressTypeText,
    this.timeAtCurrentAddress,
    this.address,
    this.state,
    this.lga,
    this.homeStateText,
    this.homeLgaText,
  });

  factory BusinessAddress.fromJson(Map<String, dynamic> json) =>
      _$BusinessAddressFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessAddressToJson(this);
}
