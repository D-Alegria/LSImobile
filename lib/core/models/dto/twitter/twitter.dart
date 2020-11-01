import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'twitter.freezed.dart';

part 'twitter.g.dart';

@freezed
abstract class Twitter with _$Twitter {
  @JsonSerializable(explicitToJson: true)
  factory Twitter() = _Twitter;

  factory Twitter.fromJson(Map<String, dynamic> json) =>
      _$TwitterFromJson(json);
}
