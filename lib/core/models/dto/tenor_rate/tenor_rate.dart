import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenor_rate.g.dart';

///Created by Demilade Oladugba on 4/22/2021

@JsonSerializable()
class TenorRate {
  final int duration;
  final double rate;

  TenorRate({this.rate, this.duration});

  factory TenorRate.fromJson(Map<String, dynamic> json) =>
      _$TenorRateFromJson(json);

  Map<String, dynamic> toJson() => _$TenorRateToJson(this);
}
