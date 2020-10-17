// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessAddress _$BusinessAddressFromJson(Map<String, dynamic> json) {
  return BusinessAddress(
    addressType: json['address_type'] as String,
    addressTypeText: json['address_type_text'] as String,
    timeAtCurrentAddress: json['time_at_current_address'] as String,
    address: json['address'] as String,
    state: json['state'] as String,
    lga: json['lga'] as String,
    homeStateText: json['home_state_text'] as String,
    homeLgaText: json['home_lga_text'] as String,
  );
}

Map<String, dynamic> _$BusinessAddressToJson(BusinessAddress instance) =>
    <String, dynamic>{
      'address_type': instance.addressType,
      'address_type_text': instance.addressTypeText,
      'time_at_current_address': instance.timeAtCurrentAddress,
      'address': instance.address,
      'state': instance.state,
      'lga': instance.lga,
      'home_state_text': instance.homeStateText,
      'home_lga_text': instance.homeLgaText,
    };
