// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bvn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BVN _$BVNFromJson(Map<String, dynamic> json) {
  return _BVN.fromJson(json);
}

/// @nodoc
class _$BVNTearOff {
  const _$BVNTearOff();

// ignore: unused_element
  _BVN call(
      {String bvn,
      @JsonKey(name: 'bvn_phone') String bvnPhone,
      @JsonKey(name: 'bvn_name') String bvnName,
      @JsonKey(name: 'bvn_dob') String bvnDob,
      @JsonKey(name: 'bvn_response') String bvnResponse}) {
    return _BVN(
      bvn: bvn,
      bvnPhone: bvnPhone,
      bvnName: bvnName,
      bvnDob: bvnDob,
      bvnResponse: bvnResponse,
    );
  }

// ignore: unused_element
  BVN fromJson(Map<String, Object> json) {
    return BVN.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BVN = _$BVNTearOff();

/// @nodoc
mixin _$BVN {
  String get bvn;
  @JsonKey(name: 'bvn_phone')
  String get bvnPhone;
  @JsonKey(name: 'bvn_name')
  String get bvnName;
  @JsonKey(name: 'bvn_dob')
  String get bvnDob;
  @JsonKey(name: 'bvn_response')
  String get bvnResponse;

  Map<String, dynamic> toJson();
  $BVNCopyWith<BVN> get copyWith;
}

/// @nodoc
abstract class $BVNCopyWith<$Res> {
  factory $BVNCopyWith(BVN value, $Res Function(BVN) then) =
      _$BVNCopyWithImpl<$Res>;
  $Res call(
      {String bvn,
      @JsonKey(name: 'bvn_phone') String bvnPhone,
      @JsonKey(name: 'bvn_name') String bvnName,
      @JsonKey(name: 'bvn_dob') String bvnDob,
      @JsonKey(name: 'bvn_response') String bvnResponse});
}

/// @nodoc
class _$BVNCopyWithImpl<$Res> implements $BVNCopyWith<$Res> {
  _$BVNCopyWithImpl(this._value, this._then);

  final BVN _value;
  // ignore: unused_field
  final $Res Function(BVN) _then;

  @override
  $Res call({
    Object bvn = freezed,
    Object bvnPhone = freezed,
    Object bvnName = freezed,
    Object bvnDob = freezed,
    Object bvnResponse = freezed,
  }) {
    return _then(_value.copyWith(
      bvn: bvn == freezed ? _value.bvn : bvn as String,
      bvnPhone: bvnPhone == freezed ? _value.bvnPhone : bvnPhone as String,
      bvnName: bvnName == freezed ? _value.bvnName : bvnName as String,
      bvnDob: bvnDob == freezed ? _value.bvnDob : bvnDob as String,
      bvnResponse:
          bvnResponse == freezed ? _value.bvnResponse : bvnResponse as String,
    ));
  }
}

/// @nodoc
abstract class _$BVNCopyWith<$Res> implements $BVNCopyWith<$Res> {
  factory _$BVNCopyWith(_BVN value, $Res Function(_BVN) then) =
      __$BVNCopyWithImpl<$Res>;
  @override
  $Res call(
      {String bvn,
      @JsonKey(name: 'bvn_phone') String bvnPhone,
      @JsonKey(name: 'bvn_name') String bvnName,
      @JsonKey(name: 'bvn_dob') String bvnDob,
      @JsonKey(name: 'bvn_response') String bvnResponse});
}

/// @nodoc
class __$BVNCopyWithImpl<$Res> extends _$BVNCopyWithImpl<$Res>
    implements _$BVNCopyWith<$Res> {
  __$BVNCopyWithImpl(_BVN _value, $Res Function(_BVN) _then)
      : super(_value, (v) => _then(v as _BVN));

  @override
  _BVN get _value => super._value as _BVN;

  @override
  $Res call({
    Object bvn = freezed,
    Object bvnPhone = freezed,
    Object bvnName = freezed,
    Object bvnDob = freezed,
    Object bvnResponse = freezed,
  }) {
    return _then(_BVN(
      bvn: bvn == freezed ? _value.bvn : bvn as String,
      bvnPhone: bvnPhone == freezed ? _value.bvnPhone : bvnPhone as String,
      bvnName: bvnName == freezed ? _value.bvnName : bvnName as String,
      bvnDob: bvnDob == freezed ? _value.bvnDob : bvnDob as String,
      bvnResponse:
          bvnResponse == freezed ? _value.bvnResponse : bvnResponse as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_BVN implements _BVN {
  _$_BVN(
      {this.bvn,
      @JsonKey(name: 'bvn_phone') this.bvnPhone,
      @JsonKey(name: 'bvn_name') this.bvnName,
      @JsonKey(name: 'bvn_dob') this.bvnDob,
      @JsonKey(name: 'bvn_response') this.bvnResponse});

  factory _$_BVN.fromJson(Map<String, dynamic> json) => _$_$_BVNFromJson(json);

  @override
  final String bvn;
  @override
  @JsonKey(name: 'bvn_phone')
  final String bvnPhone;
  @override
  @JsonKey(name: 'bvn_name')
  final String bvnName;
  @override
  @JsonKey(name: 'bvn_dob')
  final String bvnDob;
  @override
  @JsonKey(name: 'bvn_response')
  final String bvnResponse;

  @override
  String toString() {
    return 'BVN(bvn: $bvn, bvnPhone: $bvnPhone, bvnName: $bvnName, bvnDob: $bvnDob, bvnResponse: $bvnResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BVN &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)) &&
            (identical(other.bvnPhone, bvnPhone) ||
                const DeepCollectionEquality()
                    .equals(other.bvnPhone, bvnPhone)) &&
            (identical(other.bvnName, bvnName) ||
                const DeepCollectionEquality()
                    .equals(other.bvnName, bvnName)) &&
            (identical(other.bvnDob, bvnDob) ||
                const DeepCollectionEquality().equals(other.bvnDob, bvnDob)) &&
            (identical(other.bvnResponse, bvnResponse) ||
                const DeepCollectionEquality()
                    .equals(other.bvnResponse, bvnResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bvn) ^
      const DeepCollectionEquality().hash(bvnPhone) ^
      const DeepCollectionEquality().hash(bvnName) ^
      const DeepCollectionEquality().hash(bvnDob) ^
      const DeepCollectionEquality().hash(bvnResponse);

  @override
  _$BVNCopyWith<_BVN> get copyWith =>
      __$BVNCopyWithImpl<_BVN>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BVNToJson(this);
  }
}

abstract class _BVN implements BVN {
  factory _BVN(
      {String bvn,
      @JsonKey(name: 'bvn_phone') String bvnPhone,
      @JsonKey(name: 'bvn_name') String bvnName,
      @JsonKey(name: 'bvn_dob') String bvnDob,
      @JsonKey(name: 'bvn_response') String bvnResponse}) = _$_BVN;

  factory _BVN.fromJson(Map<String, dynamic> json) = _$_BVN.fromJson;

  @override
  String get bvn;
  @override
  @JsonKey(name: 'bvn_phone')
  String get bvnPhone;
  @override
  @JsonKey(name: 'bvn_name')
  String get bvnName;
  @override
  @JsonKey(name: 'bvn_dob')
  String get bvnDob;
  @override
  @JsonKey(name: 'bvn_response')
  String get bvnResponse;
  @override
  _$BVNCopyWith<_BVN> get copyWith;
}
