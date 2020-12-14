// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      {@nullable bool status,
      @nullable String message,
      @nullable UserDetailsRequest data,
      @nullable @JsonKey(name: 'is_individual') bool isIndividual}) {
    return _UserData(
      status: status,
      message: message,
      data: data,
      isIndividual: isIndividual,
    );
  }

// ignore: unused_element
  UserData fromJson(Map<String, Object> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  @nullable
  bool get status;
  @nullable
  String get message;
  @nullable
  UserDetailsRequest get data;
  @nullable
  @JsonKey(name: 'is_individual')
  bool get isIndividual;

  Map<String, dynamic> toJson();
  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable bool status,
      @nullable String message,
      @nullable UserDetailsRequest data,
      @nullable @JsonKey(name: 'is_individual') bool isIndividual});

  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
    Object data = freezed,
    Object isIndividual = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as bool,
      message: message == freezed ? _value.message : message as String,
      data: data == freezed ? _value.data : data as UserDetailsRequest,
      isIndividual:
          isIndividual == freezed ? _value.isIndividual : isIndividual as bool,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable bool status,
      @nullable String message,
      @nullable UserDetailsRequest data,
      @nullable @JsonKey(name: 'is_individual') bool isIndividual});

  @override
  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
    Object data = freezed,
    Object isIndividual = freezed,
  }) {
    return _then(_UserData(
      status: status == freezed ? _value.status : status as bool,
      message: message == freezed ? _value.message : message as String,
      data: data == freezed ? _value.data : data as UserDetailsRequest,
      isIndividual:
          isIndividual == freezed ? _value.isIndividual : isIndividual as bool,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_UserData implements _UserData {
  _$_UserData(
      {@nullable this.status,
      @nullable this.message,
      @nullable this.data,
      @nullable @JsonKey(name: 'is_individual') this.isIndividual});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @override
  @nullable
  final bool status;
  @override
  @nullable
  final String message;
  @override
  @nullable
  final UserDetailsRequest data;
  @override
  @nullable
  @JsonKey(name: 'is_individual')
  final bool isIndividual;

  @override
  String toString() {
    return 'UserData(status: $status, message: $message, data: $data, isIndividual: $isIndividual)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isIndividual, isIndividual) ||
                const DeepCollectionEquality()
                    .equals(other.isIndividual, isIndividual)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isIndividual);

  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  factory _UserData(
          {@nullable bool status,
          @nullable String message,
          @nullable UserDetailsRequest data,
          @nullable @JsonKey(name: 'is_individual') bool isIndividual}) =
      _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  @nullable
  bool get status;
  @override
  @nullable
  String get message;
  @override
  @nullable
  UserDetailsRequest get data;
  @override
  @nullable
  @JsonKey(name: 'is_individual')
  bool get isIndividual;
  @override
  _$UserDataCopyWith<_UserData> get copyWith;
}
