import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';

part 'user_data.freezed.dart';

part 'user_data.g.dart';

@freezed
abstract class UserData with _$UserData {
  @JsonSerializable(explicitToJson: true)
  factory UserData({
    @nullable bool status,
    @nullable String message,
    @nullable UserDetailsRequest data,
    @nullable @JsonKey(name: "is_individual") bool isIndividual,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
