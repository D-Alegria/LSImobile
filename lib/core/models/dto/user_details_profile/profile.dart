import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  @JsonSerializable(explicitToJson: true)
  factory Profile({
    @nullable @JsonKey(name: "legal_name") String legalName,
    @nullable String email,
    @nullable String phone,
    @nullable @JsonKey(name: "date_of_birth") String dateOfBirth,
    @nullable @JsonKey(name: "birth_year") String birthYear,
    @nullable @JsonKey(name: "birth_month") String birthMonth,
    @nullable @JsonKey(name: "birth_day") String birthDay,
    @nullable String gender,
    @nullable @JsonKey(name: "marital_status") String maritalStatus,
    @nullable int age,
    @nullable String nationality,
    @nullable @JsonKey(name: "state_of_origin") String stateOfOrigin,
    @nullable String bvn,
    @nullable @JsonKey(name: "file_name") String fileName,
    @nullable @JsonKey(name: "profile_image") String profileImage,
    @nullable String token,
  }) = _Profile;

  factory Profile.initial() => Profile(
        gender: '0',
        email: '',
        age: 0,
        birthDay: '',
        birthMonth: '',
        birthYear: '',
        bvn: '',
        dateOfBirth: '',
        fileName: '',
        legalName: 'a b',
        maritalStatus: '',
        nationality: '',
        phone: '',
        stateOfOrigin: '',
        token: '',
        profileImage: '',
      );

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
