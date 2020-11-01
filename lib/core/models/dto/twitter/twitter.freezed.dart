// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'twitter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Twitter _$TwitterFromJson(Map<String, dynamic> json) {
  return _Twitter.fromJson(json);
}

/// @nodoc
class _$TwitterTearOff {
  const _$TwitterTearOff();

// ignore: unused_element
  _Twitter call() {
    return _Twitter();
  }

// ignore: unused_element
  Twitter fromJson(Map<String, Object> json) {
    return Twitter.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Twitter = _$TwitterTearOff();

/// @nodoc
mixin _$Twitter {
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $TwitterCopyWith<$Res> {
  factory $TwitterCopyWith(Twitter value, $Res Function(Twitter) then) =
      _$TwitterCopyWithImpl<$Res>;
}

/// @nodoc
class _$TwitterCopyWithImpl<$Res> implements $TwitterCopyWith<$Res> {
  _$TwitterCopyWithImpl(this._value, this._then);

  final Twitter _value;
  // ignore: unused_field
  final $Res Function(Twitter) _then;
}

/// @nodoc
abstract class _$TwitterCopyWith<$Res> {
  factory _$TwitterCopyWith(_Twitter value, $Res Function(_Twitter) then) =
      __$TwitterCopyWithImpl<$Res>;
}

/// @nodoc
class __$TwitterCopyWithImpl<$Res> extends _$TwitterCopyWithImpl<$Res>
    implements _$TwitterCopyWith<$Res> {
  __$TwitterCopyWithImpl(_Twitter _value, $Res Function(_Twitter) _then)
      : super(_value, (v) => _then(v as _Twitter));

  @override
  _Twitter get _value => super._value as _Twitter;
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Twitter implements _Twitter {
  _$_Twitter();

  factory _$_Twitter.fromJson(Map<String, dynamic> json) =>
      _$_$_TwitterFromJson(json);

  @override
  String toString() {
    return 'Twitter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Twitter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TwitterToJson(this);
  }
}

abstract class _Twitter implements Twitter {
  factory _Twitter() = _$_Twitter;

  factory _Twitter.fromJson(Map<String, dynamic> json) = _$_Twitter.fromJson;
}
