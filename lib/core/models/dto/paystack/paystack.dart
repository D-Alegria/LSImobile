import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paystack.freezed.dart';

part 'paystack.g.dart';

@freezed
abstract class Paystack with _$Paystack {
  @JsonSerializable(explicitToJson: true)
  factory Paystack({
    @nullable String reference,
  }) = _Paystack;

  factory Paystack.fromJson(Map<String, dynamic> json) =>
      _$PaystackFromJson(json);
}
