// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remita.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Remita _$RemitaFromJson(Map<String, dynamic> json) {
  return _Remita.fromJson(json);
}

/// @nodoc
class _$RemitaTearOff {
  const _$RemitaTearOff();

// ignore: unused_element
  _Remita call({@JsonKey(name: 'has_remita') bool hasRemita}) {
    return _Remita(
      hasRemita: hasRemita,
    );
  }

// ignore: unused_element
  Remita fromJson(Map<String, Object> json) {
    return Remita.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Remita = _$RemitaTearOff();

/// @nodoc
mixin _$Remita {
  @JsonKey(name: 'has_remita')
  bool get hasRemita;

  Map<String, dynamic> toJson();
  $RemitaCopyWith<Remita> get copyWith;
}

/// @nodoc
abstract class $RemitaCopyWith<$Res> {
  factory $RemitaCopyWith(Remita value, $Res Function(Remita) then) =
      _$RemitaCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'has_remita') bool hasRemita});
}

/// @nodoc
class _$RemitaCopyWithImpl<$Res> implements $RemitaCopyWith<$Res> {
  _$RemitaCopyWithImpl(this._value, this._then);

  final Remita _value;
  // ignore: unused_field
  final $Res Function(Remita) _then;

  @override
  $Res call({
    Object hasRemita = freezed,
  }) {
    return _then(_value.copyWith(
      hasRemita: hasRemita == freezed ? _value.hasRemita : hasRemita as bool,
    ));
  }
}

/// @nodoc
abstract class _$RemitaCopyWith<$Res> implements $RemitaCopyWith<$Res> {
  factory _$RemitaCopyWith(_Remita value, $Res Function(_Remita) then) =
      __$RemitaCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'has_remita') bool hasRemita});
}

/// @nodoc
class __$RemitaCopyWithImpl<$Res> extends _$RemitaCopyWithImpl<$Res>
    implements _$RemitaCopyWith<$Res> {
  __$RemitaCopyWithImpl(_Remita _value, $Res Function(_Remita) _then)
      : super(_value, (v) => _then(v as _Remita));

  @override
  _Remita get _value => super._value as _Remita;

  @override
  $Res call({
    Object hasRemita = freezed,
  }) {
    return _then(_Remita(
      hasRemita: hasRemita == freezed ? _value.hasRemita : hasRemita as bool,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Remita implements _Remita {
  _$_Remita({@JsonKey(name: 'has_remita') this.hasRemita});

  factory _$_Remita.fromJson(Map<String, dynamic> json) =>
      _$_$_RemitaFromJson(json);

  @override
  @JsonKey(name: 'has_remita')
  final bool hasRemita;

  @override
  String toString() {
    return 'Remita(hasRemita: $hasRemita)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remita &&
            (identical(other.hasRemita, hasRemita) ||
                const DeepCollectionEquality()
                    .equals(other.hasRemita, hasRemita)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hasRemita);

  @override
  _$RemitaCopyWith<_Remita> get copyWith =>
      __$RemitaCopyWithImpl<_Remita>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemitaToJson(this);
  }
}

abstract class _Remita implements Remita {
  factory _Remita({@JsonKey(name: 'has_remita') bool hasRemita}) = _$_Remita;

  factory _Remita.fromJson(Map<String, dynamic> json) = _$_Remita.fromJson;

  @override
  @JsonKey(name: 'has_remita')
  bool get hasRemita;
  @override
  _$RemitaCopyWith<_Remita> get copyWith;
}
