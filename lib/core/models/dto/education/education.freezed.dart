// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'education.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
class _$EducationTearOff {
  const _$EducationTearOff();

// ignore: unused_element
  _Education call(
      {@nullable
      @JsonKey(name: 'educational_qualification')
          String educationalQualification,
      @nullable
      @JsonKey(name: 'educational_institution')
          String educationalInstitution,
      @nullable
      @JsonKey(name: 'qualification_year')
          String qualificationYear,
      @nullable
      @JsonKey(name: 'specify_qualifications')
          String specifyQualifications,
      @nullable
      @JsonKey(name: 'has_other_qualifications')
          String hasOtherQualifications}) {
    return _Education(
      educationalQualification: educationalQualification,
      educationalInstitution: educationalInstitution,
      qualificationYear: qualificationYear,
      specifyQualifications: specifyQualifications,
      hasOtherQualifications: hasOtherQualifications,
    );
  }

// ignore: unused_element
  Education fromJson(Map<String, Object> json) {
    return Education.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Education = _$EducationTearOff();

/// @nodoc
mixin _$Education {
  @nullable
  @JsonKey(name: 'educational_qualification')
  String get educationalQualification;
  @nullable
  @JsonKey(name: 'educational_institution')
  String get educationalInstitution;
  @nullable
  @JsonKey(name: 'qualification_year')
  String get qualificationYear;
  @nullable
  @JsonKey(name: 'specify_qualifications')
  String get specifyQualifications;
  @nullable
  @JsonKey(name: 'has_other_qualifications')
  String get hasOtherQualifications;

  Map<String, dynamic> toJson();
  $EducationCopyWith<Education> get copyWith;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(name: 'educational_qualification')
          String educationalQualification,
      @nullable
      @JsonKey(name: 'educational_institution')
          String educationalInstitution,
      @nullable
      @JsonKey(name: 'qualification_year')
          String qualificationYear,
      @nullable
      @JsonKey(name: 'specify_qualifications')
          String specifyQualifications,
      @nullable
      @JsonKey(name: 'has_other_qualifications')
          String hasOtherQualifications});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res> implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  final Education _value;
  // ignore: unused_field
  final $Res Function(Education) _then;

  @override
  $Res call({
    Object educationalQualification = freezed,
    Object educationalInstitution = freezed,
    Object qualificationYear = freezed,
    Object specifyQualifications = freezed,
    Object hasOtherQualifications = freezed,
  }) {
    return _then(_value.copyWith(
      educationalQualification: educationalQualification == freezed
          ? _value.educationalQualification
          : educationalQualification as String,
      educationalInstitution: educationalInstitution == freezed
          ? _value.educationalInstitution
          : educationalInstitution as String,
      qualificationYear: qualificationYear == freezed
          ? _value.qualificationYear
          : qualificationYear as String,
      specifyQualifications: specifyQualifications == freezed
          ? _value.specifyQualifications
          : specifyQualifications as String,
      hasOtherQualifications: hasOtherQualifications == freezed
          ? _value.hasOtherQualifications
          : hasOtherQualifications as String,
    ));
  }
}

/// @nodoc
abstract class _$EducationCopyWith<$Res> implements $EducationCopyWith<$Res> {
  factory _$EducationCopyWith(
          _Education value, $Res Function(_Education) then) =
      __$EducationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(name: 'educational_qualification')
          String educationalQualification,
      @nullable
      @JsonKey(name: 'educational_institution')
          String educationalInstitution,
      @nullable
      @JsonKey(name: 'qualification_year')
          String qualificationYear,
      @nullable
      @JsonKey(name: 'specify_qualifications')
          String specifyQualifications,
      @nullable
      @JsonKey(name: 'has_other_qualifications')
          String hasOtherQualifications});
}

/// @nodoc
class __$EducationCopyWithImpl<$Res> extends _$EducationCopyWithImpl<$Res>
    implements _$EducationCopyWith<$Res> {
  __$EducationCopyWithImpl(_Education _value, $Res Function(_Education) _then)
      : super(_value, (v) => _then(v as _Education));

  @override
  _Education get _value => super._value as _Education;

  @override
  $Res call({
    Object educationalQualification = freezed,
    Object educationalInstitution = freezed,
    Object qualificationYear = freezed,
    Object specifyQualifications = freezed,
    Object hasOtherQualifications = freezed,
  }) {
    return _then(_Education(
      educationalQualification: educationalQualification == freezed
          ? _value.educationalQualification
          : educationalQualification as String,
      educationalInstitution: educationalInstitution == freezed
          ? _value.educationalInstitution
          : educationalInstitution as String,
      qualificationYear: qualificationYear == freezed
          ? _value.qualificationYear
          : qualificationYear as String,
      specifyQualifications: specifyQualifications == freezed
          ? _value.specifyQualifications
          : specifyQualifications as String,
      hasOtherQualifications: hasOtherQualifications == freezed
          ? _value.hasOtherQualifications
          : hasOtherQualifications as String,
    ));
  }
}

@JsonSerializable(nullable: true, explicitToJson: true)

/// @nodoc
class _$_Education implements _Education {
  _$_Education(
      {@nullable
      @JsonKey(name: 'educational_qualification')
          this.educationalQualification,
      @nullable
      @JsonKey(name: 'educational_institution')
          this.educationalInstitution,
      @nullable
      @JsonKey(name: 'qualification_year')
          this.qualificationYear,
      @nullable
      @JsonKey(name: 'specify_qualifications')
          this.specifyQualifications,
      @nullable
      @JsonKey(name: 'has_other_qualifications')
          this.hasOtherQualifications});

  factory _$_Education.fromJson(Map<String, dynamic> json) =>
      _$_$_EducationFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'educational_qualification')
  final String educationalQualification;
  @override
  @nullable
  @JsonKey(name: 'educational_institution')
  final String educationalInstitution;
  @override
  @nullable
  @JsonKey(name: 'qualification_year')
  final String qualificationYear;
  @override
  @nullable
  @JsonKey(name: 'specify_qualifications')
  final String specifyQualifications;
  @override
  @nullable
  @JsonKey(name: 'has_other_qualifications')
  final String hasOtherQualifications;

  @override
  String toString() {
    return 'Education(educationalQualification: $educationalQualification, educationalInstitution: $educationalInstitution, qualificationYear: $qualificationYear, specifyQualifications: $specifyQualifications, hasOtherQualifications: $hasOtherQualifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Education &&
            (identical(
                    other.educationalQualification, educationalQualification) ||
                const DeepCollectionEquality().equals(
                    other.educationalQualification,
                    educationalQualification)) &&
            (identical(other.educationalInstitution, educationalInstitution) ||
                const DeepCollectionEquality().equals(
                    other.educationalInstitution, educationalInstitution)) &&
            (identical(other.qualificationYear, qualificationYear) ||
                const DeepCollectionEquality()
                    .equals(other.qualificationYear, qualificationYear)) &&
            (identical(other.specifyQualifications, specifyQualifications) ||
                const DeepCollectionEquality().equals(
                    other.specifyQualifications, specifyQualifications)) &&
            (identical(other.hasOtherQualifications, hasOtherQualifications) ||
                const DeepCollectionEquality().equals(
                    other.hasOtherQualifications, hasOtherQualifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(educationalQualification) ^
      const DeepCollectionEquality().hash(educationalInstitution) ^
      const DeepCollectionEquality().hash(qualificationYear) ^
      const DeepCollectionEquality().hash(specifyQualifications) ^
      const DeepCollectionEquality().hash(hasOtherQualifications);

  @override
  _$EducationCopyWith<_Education> get copyWith =>
      __$EducationCopyWithImpl<_Education>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EducationToJson(this);
  }
}

abstract class _Education implements Education {
  factory _Education(
      {@nullable
      @JsonKey(name: 'educational_qualification')
          String educationalQualification,
      @nullable
      @JsonKey(name: 'educational_institution')
          String educationalInstitution,
      @nullable
      @JsonKey(name: 'qualification_year')
          String qualificationYear,
      @nullable
      @JsonKey(name: 'specify_qualifications')
          String specifyQualifications,
      @nullable
      @JsonKey(name: 'has_other_qualifications')
          String hasOtherQualifications}) = _$_Education;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$_Education.fromJson;

  @override
  @nullable
  @JsonKey(name: 'educational_qualification')
  String get educationalQualification;
  @override
  @nullable
  @JsonKey(name: 'educational_institution')
  String get educationalInstitution;
  @override
  @nullable
  @JsonKey(name: 'qualification_year')
  String get qualificationYear;
  @override
  @nullable
  @JsonKey(name: 'specify_qualifications')
  String get specifyQualifications;
  @override
  @nullable
  @JsonKey(name: 'has_other_qualifications')
  String get hasOtherQualifications;
  @override
  _$EducationCopyWith<_Education> get copyWith;
}
