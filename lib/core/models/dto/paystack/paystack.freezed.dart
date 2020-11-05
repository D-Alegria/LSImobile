// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'paystack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Paystack _$PaystackFromJson(Map<String, dynamic> json) {
  return _Paystack.fromJson(json);
}

/// @nodoc
class _$PaystackTearOff {
  const _$PaystackTearOff();

// ignore: unused_element
  _Paystack call({@nullable String reference}) {
    return _Paystack(
      reference: reference,
    );
  }

// ignore: unused_element
  Paystack fromJson(Map<String, Object> json) {
    return Paystack.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Paystack = _$PaystackTearOff();

/// @nodoc
mixin _$Paystack {
  @nullable
  String get reference;

  Map<String, dynamic> toJson();
  $PaystackCopyWith<Paystack> get copyWith;
}

/// @nodoc
abstract class $PaystackCopyWith<$Res> {
  factory $PaystackCopyWith(Paystack value, $Res Function(Paystack) then) =
      _$PaystackCopyWithImpl<$Res>;
  $Res call({@nullable String reference});
}

/// @nodoc
class _$PaystackCopyWithImpl<$Res> implements $PaystackCopyWith<$Res> {
  _$PaystackCopyWithImpl(this._value, this._then);

  final Paystack _value;
  // ignore: unused_field
  final $Res Function(Paystack) _then;

  @override
  $Res call({
    Object reference = freezed,
  }) {
    return _then(_value.copyWith(
      reference: reference == freezed ? _value.reference : reference as String,
    ));
  }
}

/// @nodoc
abstract class _$PaystackCopyWith<$Res> implements $PaystackCopyWith<$Res> {
  factory _$PaystackCopyWith(_Paystack value, $Res Function(_Paystack) then) =
      __$PaystackCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String reference});
}

/// @nodoc
class __$PaystackCopyWithImpl<$Res> extends _$PaystackCopyWithImpl<$Res>
    implements _$PaystackCopyWith<$Res> {
  __$PaystackCopyWithImpl(_Paystack _value, $Res Function(_Paystack) _then)
      : super(_value, (v) => _then(v as _Paystack));

  @override
  _Paystack get _value => super._value as _Paystack;

  @override
  $Res call({
    Object reference = freezed,
  }) {
    return _then(_Paystack(
      reference: reference == freezed ? _value.reference : reference as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Paystack implements _Paystack {
  _$_Paystack({@nullable this.reference});

  factory _$_Paystack.fromJson(Map<String, dynamic> json) =>
      _$_$_PaystackFromJson(json);

  @override
  @nullable
  final String reference;

  @override
  String toString() {
    return 'Paystack(reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Paystack &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reference);

  @override
  _$PaystackCopyWith<_Paystack> get copyWith =>
      __$PaystackCopyWithImpl<_Paystack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaystackToJson(this);
  }
}

abstract class _Paystack implements Paystack {
  factory _Paystack({@nullable String reference}) = _$_Paystack;

  factory _Paystack.fromJson(Map<String, dynamic> json) = _$_Paystack.fromJson;

  @override
  @nullable
  String get reference;
  @override
  _$PaystackCopyWith<_Paystack> get copyWith;
}
