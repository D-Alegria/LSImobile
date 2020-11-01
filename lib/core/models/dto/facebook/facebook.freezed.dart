// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'facebook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Facebook _$FacebookFromJson(Map<String, dynamic> json) {
  return _Facebook.fromJson(json);
}

/// @nodoc
class _$FacebookTearOff {
  const _$FacebookTearOff();

// ignore: unused_element
  _Facebook call(
      {@nullable String name,
      @nullable String email,
      @nullable String picture}) {
    return _Facebook(
      name: name,
      email: email,
      picture: picture,
    );
  }

// ignore: unused_element
  Facebook fromJson(Map<String, Object> json) {
    return Facebook.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Facebook = _$FacebookTearOff();

/// @nodoc
mixin _$Facebook {
  @nullable
  String get name;
  @nullable
  String get email;
  @nullable
  String get picture;

  Map<String, dynamic> toJson();
  $FacebookCopyWith<Facebook> get copyWith;
}

/// @nodoc
abstract class $FacebookCopyWith<$Res> {
  factory $FacebookCopyWith(Facebook value, $Res Function(Facebook) then) =
      _$FacebookCopyWithImpl<$Res>;
  $Res call(
      {@nullable String name,
      @nullable String email,
      @nullable String picture});
}

/// @nodoc
class _$FacebookCopyWithImpl<$Res> implements $FacebookCopyWith<$Res> {
  _$FacebookCopyWithImpl(this._value, this._then);

  final Facebook _value;
  // ignore: unused_field
  final $Res Function(Facebook) _then;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object picture = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
abstract class _$FacebookCopyWith<$Res> implements $FacebookCopyWith<$Res> {
  factory _$FacebookCopyWith(_Facebook value, $Res Function(_Facebook) then) =
      __$FacebookCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String name,
      @nullable String email,
      @nullable String picture});
}

/// @nodoc
class __$FacebookCopyWithImpl<$Res> extends _$FacebookCopyWithImpl<$Res>
    implements _$FacebookCopyWith<$Res> {
  __$FacebookCopyWithImpl(_Facebook _value, $Res Function(_Facebook) _then)
      : super(_value, (v) => _then(v as _Facebook));

  @override
  _Facebook get _value => super._value as _Facebook;

  @override
  $Res call({
    Object name = freezed,
    Object email = freezed,
    Object picture = freezed,
  }) {
    return _then(_Facebook(
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Facebook implements _Facebook {
  _$_Facebook(
      {@nullable this.name, @nullable this.email, @nullable this.picture});

  factory _$_Facebook.fromJson(Map<String, dynamic> json) =>
      _$_$_FacebookFromJson(json);

  @override
  @nullable
  final String name;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String picture;

  @override
  String toString() {
    return 'Facebook(name: $name, email: $email, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Facebook &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(picture);

  @override
  _$FacebookCopyWith<_Facebook> get copyWith =>
      __$FacebookCopyWithImpl<_Facebook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FacebookToJson(this);
  }
}

abstract class _Facebook implements Facebook {
  factory _Facebook(
      {@nullable String name,
      @nullable String email,
      @nullable String picture}) = _$_Facebook;

  factory _Facebook.fromJson(Map<String, dynamic> json) = _$_Facebook.fromJson;

  @override
  @nullable
  String get name;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get picture;
  @override
  _$FacebookCopyWith<_Facebook> get copyWith;
}
