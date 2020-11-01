// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'linkedin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Linkedin _$LinkedinFromJson(Map<String, dynamic> json) {
  return _Linkedin.fromJson(json);
}

/// @nodoc
class _$LinkedinTearOff {
  const _$LinkedinTearOff();

// ignore: unused_element
  _Linkedin call(
      {@nullable String fullname,
      @nullable String picture,
      @nullable String profile,
      @nullable String connection,
      @nullable String location,
      @nullable String industry,
      @nullable String headline,
      @nullable String summary,
      @nullable String email,
      @nullable List<dynamic> companies}) {
    return _Linkedin(
      fullname: fullname,
      picture: picture,
      profile: profile,
      connection: connection,
      location: location,
      industry: industry,
      headline: headline,
      summary: summary,
      email: email,
      companies: companies,
    );
  }

// ignore: unused_element
  Linkedin fromJson(Map<String, Object> json) {
    return Linkedin.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Linkedin = _$LinkedinTearOff();

/// @nodoc
mixin _$Linkedin {
  @nullable
  String get fullname;
  @nullable
  String get picture;
  @nullable
  String get profile;
  @nullable
  String get connection;
  @nullable
  String get location;
  @nullable
  String get industry;
  @nullable
  String get headline;
  @nullable
  String get summary;
  @nullable
  String get email;
  @nullable
  List<dynamic> get companies;

  Map<String, dynamic> toJson();
  $LinkedinCopyWith<Linkedin> get copyWith;
}

/// @nodoc
abstract class $LinkedinCopyWith<$Res> {
  factory $LinkedinCopyWith(Linkedin value, $Res Function(Linkedin) then) =
      _$LinkedinCopyWithImpl<$Res>;
  $Res call(
      {@nullable String fullname,
      @nullable String picture,
      @nullable String profile,
      @nullable String connection,
      @nullable String location,
      @nullable String industry,
      @nullable String headline,
      @nullable String summary,
      @nullable String email,
      @nullable List<dynamic> companies});
}

/// @nodoc
class _$LinkedinCopyWithImpl<$Res> implements $LinkedinCopyWith<$Res> {
  _$LinkedinCopyWithImpl(this._value, this._then);

  final Linkedin _value;
  // ignore: unused_field
  final $Res Function(Linkedin) _then;

  @override
  $Res call({
    Object fullname = freezed,
    Object picture = freezed,
    Object profile = freezed,
    Object connection = freezed,
    Object location = freezed,
    Object industry = freezed,
    Object headline = freezed,
    Object summary = freezed,
    Object email = freezed,
    Object companies = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      picture: picture == freezed ? _value.picture : picture as String,
      profile: profile == freezed ? _value.profile : profile as String,
      connection:
          connection == freezed ? _value.connection : connection as String,
      location: location == freezed ? _value.location : location as String,
      industry: industry == freezed ? _value.industry : industry as String,
      headline: headline == freezed ? _value.headline : headline as String,
      summary: summary == freezed ? _value.summary : summary as String,
      email: email == freezed ? _value.email : email as String,
      companies:
          companies == freezed ? _value.companies : companies as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$LinkedinCopyWith<$Res> implements $LinkedinCopyWith<$Res> {
  factory _$LinkedinCopyWith(_Linkedin value, $Res Function(_Linkedin) then) =
      __$LinkedinCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String fullname,
      @nullable String picture,
      @nullable String profile,
      @nullable String connection,
      @nullable String location,
      @nullable String industry,
      @nullable String headline,
      @nullable String summary,
      @nullable String email,
      @nullable List<dynamic> companies});
}

/// @nodoc
class __$LinkedinCopyWithImpl<$Res> extends _$LinkedinCopyWithImpl<$Res>
    implements _$LinkedinCopyWith<$Res> {
  __$LinkedinCopyWithImpl(_Linkedin _value, $Res Function(_Linkedin) _then)
      : super(_value, (v) => _then(v as _Linkedin));

  @override
  _Linkedin get _value => super._value as _Linkedin;

  @override
  $Res call({
    Object fullname = freezed,
    Object picture = freezed,
    Object profile = freezed,
    Object connection = freezed,
    Object location = freezed,
    Object industry = freezed,
    Object headline = freezed,
    Object summary = freezed,
    Object email = freezed,
    Object companies = freezed,
  }) {
    return _then(_Linkedin(
      fullname: fullname == freezed ? _value.fullname : fullname as String,
      picture: picture == freezed ? _value.picture : picture as String,
      profile: profile == freezed ? _value.profile : profile as String,
      connection:
          connection == freezed ? _value.connection : connection as String,
      location: location == freezed ? _value.location : location as String,
      industry: industry == freezed ? _value.industry : industry as String,
      headline: headline == freezed ? _value.headline : headline as String,
      summary: summary == freezed ? _value.summary : summary as String,
      email: email == freezed ? _value.email : email as String,
      companies:
          companies == freezed ? _value.companies : companies as List<dynamic>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Linkedin implements _Linkedin {
  _$_Linkedin(
      {@nullable this.fullname,
      @nullable this.picture,
      @nullable this.profile,
      @nullable this.connection,
      @nullable this.location,
      @nullable this.industry,
      @nullable this.headline,
      @nullable this.summary,
      @nullable this.email,
      @nullable this.companies});

  factory _$_Linkedin.fromJson(Map<String, dynamic> json) =>
      _$_$_LinkedinFromJson(json);

  @override
  @nullable
  final String fullname;
  @override
  @nullable
  final String picture;
  @override
  @nullable
  final String profile;
  @override
  @nullable
  final String connection;
  @override
  @nullable
  final String location;
  @override
  @nullable
  final String industry;
  @override
  @nullable
  final String headline;
  @override
  @nullable
  final String summary;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final List<dynamic> companies;

  @override
  String toString() {
    return 'Linkedin(fullname: $fullname, picture: $picture, profile: $profile, connection: $connection, location: $location, industry: $industry, headline: $headline, summary: $summary, email: $email, companies: $companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Linkedin &&
            (identical(other.fullname, fullname) ||
                const DeepCollectionEquality()
                    .equals(other.fullname, fullname)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.connection, connection) ||
                const DeepCollectionEquality()
                    .equals(other.connection, connection)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.industry, industry) ||
                const DeepCollectionEquality()
                    .equals(other.industry, industry)) &&
            (identical(other.headline, headline) ||
                const DeepCollectionEquality()
                    .equals(other.headline, headline)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.companies, companies) ||
                const DeepCollectionEquality()
                    .equals(other.companies, companies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullname) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(connection) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(industry) ^
      const DeepCollectionEquality().hash(headline) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(companies);

  @override
  _$LinkedinCopyWith<_Linkedin> get copyWith =>
      __$LinkedinCopyWithImpl<_Linkedin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinkedinToJson(this);
  }
}

abstract class _Linkedin implements Linkedin {
  factory _Linkedin(
      {@nullable String fullname,
      @nullable String picture,
      @nullable String profile,
      @nullable String connection,
      @nullable String location,
      @nullable String industry,
      @nullable String headline,
      @nullable String summary,
      @nullable String email,
      @nullable List<dynamic> companies}) = _$_Linkedin;

  factory _Linkedin.fromJson(Map<String, dynamic> json) = _$_Linkedin.fromJson;

  @override
  @nullable
  String get fullname;
  @override
  @nullable
  String get picture;
  @override
  @nullable
  String get profile;
  @override
  @nullable
  String get connection;
  @override
  @nullable
  String get location;
  @override
  @nullable
  String get industry;
  @override
  @nullable
  String get headline;
  @override
  @nullable
  String get summary;
  @override
  @nullable
  String get email;
  @override
  @nullable
  List<dynamic> get companies;
  @override
  _$LinkedinCopyWith<_Linkedin> get copyWith;
}
