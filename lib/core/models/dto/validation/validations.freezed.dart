// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'validations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Validations _$ValidationsFromJson(Map<String, dynamic> json) {
  return _Validations.fromJson(json);
}

/// @nodoc
class _$ValidationsTearOff {
  const _$ValidationsTearOff();

// ignore: unused_element
  _Validations call(
      {@nullable bool bvn, @nullable bool phone, @nullable bool email}) {
    return _Validations(
      bvn: bvn,
      phone: phone,
      email: email,
    );
  }

// ignore: unused_element
  Validations fromJson(Map<String, Object> json) {
    return Validations.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Validations = _$ValidationsTearOff();

/// @nodoc
mixin _$Validations {
  @nullable
  bool get bvn;
  @nullable
  bool get phone;
  @nullable
  bool get email;

  Map<String, dynamic> toJson();
  $ValidationsCopyWith<Validations> get copyWith;
}

/// @nodoc
abstract class $ValidationsCopyWith<$Res> {
  factory $ValidationsCopyWith(
          Validations value, $Res Function(Validations) then) =
      _$ValidationsCopyWithImpl<$Res>;
  $Res call({@nullable bool bvn, @nullable bool phone, @nullable bool email});
}

/// @nodoc
class _$ValidationsCopyWithImpl<$Res> implements $ValidationsCopyWith<$Res> {
  _$ValidationsCopyWithImpl(this._value, this._then);

  final Validations _value;
  // ignore: unused_field
  final $Res Function(Validations) _then;

  @override
  $Res call({
    Object bvn = freezed,
    Object phone = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      bvn: bvn == freezed ? _value.bvn : bvn as bool,
      phone: phone == freezed ? _value.phone : phone as bool,
      email: email == freezed ? _value.email : email as bool,
    ));
  }
}

/// @nodoc
abstract class _$ValidationsCopyWith<$Res>
    implements $ValidationsCopyWith<$Res> {
  factory _$ValidationsCopyWith(
          _Validations value, $Res Function(_Validations) then) =
      __$ValidationsCopyWithImpl<$Res>;
  @override
  $Res call({@nullable bool bvn, @nullable bool phone, @nullable bool email});
}

/// @nodoc
class __$ValidationsCopyWithImpl<$Res> extends _$ValidationsCopyWithImpl<$Res>
    implements _$ValidationsCopyWith<$Res> {
  __$ValidationsCopyWithImpl(
      _Validations _value, $Res Function(_Validations) _then)
      : super(_value, (v) => _then(v as _Validations));

  @override
  _Validations get _value => super._value as _Validations;

  @override
  $Res call({
    Object bvn = freezed,
    Object phone = freezed,
    Object email = freezed,
  }) {
    return _then(_Validations(
      bvn: bvn == freezed ? _value.bvn : bvn as bool,
      phone: phone == freezed ? _value.phone : phone as bool,
      email: email == freezed ? _value.email : email as bool,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Validations implements _Validations {
  _$_Validations(
      {@nullable this.bvn, @nullable this.phone, @nullable this.email});

  factory _$_Validations.fromJson(Map<String, dynamic> json) =>
      _$_$_ValidationsFromJson(json);

  @override
  @nullable
  final bool bvn;
  @override
  @nullable
  final bool phone;
  @override
  @nullable
  final bool email;

  @override
  String toString() {
    return 'Validations(bvn: $bvn, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Validations &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bvn) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$ValidationsCopyWith<_Validations> get copyWith =>
      __$ValidationsCopyWithImpl<_Validations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ValidationsToJson(this);
  }
}

abstract class _Validations implements Validations {
  factory _Validations(
      {@nullable bool bvn,
      @nullable bool phone,
      @nullable bool email}) = _$_Validations;

  factory _Validations.fromJson(Map<String, dynamic> json) =
      _$_Validations.fromJson;

  @override
  @nullable
  bool get bvn;
  @override
  @nullable
  bool get phone;
  @override
  @nullable
  bool get email;
  @override
  _$ValidationsCopyWith<_Validations> get copyWith;
}
