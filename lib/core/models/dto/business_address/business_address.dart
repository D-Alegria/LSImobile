import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_address.freezed.dart';

part 'business_address.g.dart';

@freezed
abstract class BusinessAddress with _$BusinessAddress {
  @JsonSerializable(explicitToJson: true)
  factory BusinessAddress({
    @JsonKey(name: "address_type") String addressType,
    @JsonKey(name: "address_type_text") String addressTypeText,
    @JsonKey(name: "time_at_current_address") String timeAtCurrentAddress,
    String address,
    String state,
    String lga,
    @JsonKey(name: "home_state_text") String homeStateText,
    @JsonKey(name: "home_lga_text") String homeLgaText,
  }) = _BusinessAddress;

  factory BusinessAddress.fromJson(Map<String, dynamic> json) =>
      _$BusinessAddressFromJson(json);
}
