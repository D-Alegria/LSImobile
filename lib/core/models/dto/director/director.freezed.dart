// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'director.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Director _$DirectorFromJson(Map<String, dynamic> json) {
  return _Director.fromJson(json);
}

/// @nodoc
class _$DirectorTearOff {
  const _$DirectorTearOff();

// ignore: unused_element
  _Director call({String name, String email, String bvn}) {
    return _Director(
      name: name,
      email: email,
      bvn: bvn,
    );
  }

// ignore: unused_element
  Director fromJson(Map<String, Object> json) {
    return Director.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Director = _$DirectorTearOff();

/// @nodoc
mixin _$Director {
  String get name;
  String get email;
  String get bvn;

  Map<String, dynamic> toJson();
  $DirectorCopyWith<Director> get copyWith;
}

/// @nodoc
abstract class $DirectorCopyWith<$Res> {
  factory $DirectorCopyWith(Director value, $Res Function(Director) then) =
      _$DirectorCopyWithImpl<$Res>;
  $Res call({String name, String email, String bvn});
}

/// @nodoc
class _$DirectorCopyWithImpl<$Res> implements $DirectorCopyWith<$Res> {
  _$DirectorCopyWithImpl(this._value, this._then);

  final Director _value;
  // ignore: unused_field
  final $Res Function(Director) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object bvn = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      bvn: bvn == freezed ? _value.bvn : bvn as String,
    ));
  }
}

/// @nodoc
abstract class _$DirectorCopyWith<$Res> implements $DirectorCopyWith<$Res> {
  factory _$DirectorCopyWith(_Director value, $Res Function(_Director) then) =
      __$DirectorCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String bvn});
}

/// @nodoc
class __$DirectorCopyWithImpl<$Res> extends _$DirectorCopyWithImpl<$Res>
    implements _$DirectorCopyWith<$Res> {
  __$DirectorCopyWithImpl(_Director _value, $Res Function(_Director) _then)
      : super(_value, (v) => _then(v as _Director));

  @override
  _Director get _value => super._value as _Director;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object bvn = freezed,
  }) {
    return _then(_Director(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      bvn: bvn == freezed ? _value.bvn : bvn as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Director implements _Director {
  _$_Director({this.name, this.email, this.bvn});

  factory _$_Director.fromJson(Map<String, dynamic> json) =>
      _$_$_DirectorFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String bvn;

  @override
  String toString() {
    return 'Director(name: $name, email: $email, bvn: $bvn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Director &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(bvn);

  @override
  _$DirectorCopyWith<_Director> get copyWith =>
      __$DirectorCopyWithImpl<_Director>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DirectorToJson(this);
  }
}

abstract class _Director implements Director {
  factory _Director({String name, String email, String bvn}) = _$_Director;

  factory _Director.fromJson(Map<String, dynamic> json) = _$_Director.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get bvn;
  @override
  _$DirectorCopyWith<_Director> get copyWith;
}
