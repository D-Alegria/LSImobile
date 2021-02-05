// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'id_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IdCard _$IdCardFromJson(Map<String, dynamic> json) {
  return _IdCard.fromJson(json);
}

/// @nodoc
class _$IdCardTearOff {
  const _$IdCardTearOff();

// ignore: unused_element
  _IdCard call(
      {@JsonKey(name: 'identity_type') String identityType,
      @JsonKey(name: 'name_on_id') String nameOnId,
      @JsonKey(name: 'identityCode') String identityCode,
      @JsonKey(name: 'idmonth') String idMonth,
      @JsonKey(name: 'idyear') String idYear,
      String picture}) {
    return _IdCard(
      identityType: identityType,
      nameOnId: nameOnId,
      identityCode: identityCode,
      idMonth: idMonth,
      idYear: idYear,
      picture: picture,
    );
  }

// ignore: unused_element
  IdCard fromJson(Map<String, Object> json) {
    return IdCard.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IdCard = _$IdCardTearOff();

/// @nodoc
mixin _$IdCard {
  @JsonKey(name: 'identity_type')
  String get identityType;
  @JsonKey(name: 'name_on_id')
  String get nameOnId;
  @JsonKey(name: 'identityCode')
  String get identityCode;
  @JsonKey(name: 'idmonth')
  String get idMonth;
  @JsonKey(name: 'idyear')
  String get idYear;
  String get picture;

  Map<String, dynamic> toJson();
  $IdCardCopyWith<IdCard> get copyWith;
}

/// @nodoc
abstract class $IdCardCopyWith<$Res> {
  factory $IdCardCopyWith(IdCard value, $Res Function(IdCard) then) =
      _$IdCardCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'identity_type') String identityType,
      @JsonKey(name: 'name_on_id') String nameOnId,
      @JsonKey(name: 'identityCode') String identityCode,
      @JsonKey(name: 'idmonth') String idMonth,
      @JsonKey(name: 'idyear') String idYear,
      String picture});
}

/// @nodoc
class _$IdCardCopyWithImpl<$Res> implements $IdCardCopyWith<$Res> {
  _$IdCardCopyWithImpl(this._value, this._then);

  final IdCard _value;
  // ignore: unused_field
  final $Res Function(IdCard) _then;

  @override
  $Res call({
    Object identityType = freezed,
    Object nameOnId = freezed,
    Object identityCode = freezed,
    Object idMonth = freezed,
    Object idYear = freezed,
    Object picture = freezed,
  }) {
    return _then(_value.copyWith(
      identityType: identityType == freezed
          ? _value.identityType
          : identityType as String,
      nameOnId: nameOnId == freezed ? _value.nameOnId : nameOnId as String,
      identityCode: identityCode == freezed
          ? _value.identityCode
          : identityCode as String,
      idMonth: idMonth == freezed ? _value.idMonth : idMonth as String,
      idYear: idYear == freezed ? _value.idYear : idYear as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

/// @nodoc
abstract class _$IdCardCopyWith<$Res> implements $IdCardCopyWith<$Res> {
  factory _$IdCardCopyWith(_IdCard value, $Res Function(_IdCard) then) =
      __$IdCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'identity_type') String identityType,
      @JsonKey(name: 'name_on_id') String nameOnId,
      @JsonKey(name: 'identityCode') String identityCode,
      @JsonKey(name: 'idmonth') String idMonth,
      @JsonKey(name: 'idyear') String idYear,
      String picture});
}

/// @nodoc
class __$IdCardCopyWithImpl<$Res> extends _$IdCardCopyWithImpl<$Res>
    implements _$IdCardCopyWith<$Res> {
  __$IdCardCopyWithImpl(_IdCard _value, $Res Function(_IdCard) _then)
      : super(_value, (v) => _then(v as _IdCard));

  @override
  _IdCard get _value => super._value as _IdCard;

  @override
  $Res call({
    Object identityType = freezed,
    Object nameOnId = freezed,
    Object identityCode = freezed,
    Object idMonth = freezed,
    Object idYear = freezed,
    Object picture = freezed,
  }) {
    return _then(_IdCard(
      identityType: identityType == freezed
          ? _value.identityType
          : identityType as String,
      nameOnId: nameOnId == freezed ? _value.nameOnId : nameOnId as String,
      identityCode: identityCode == freezed
          ? _value.identityCode
          : identityCode as String,
      idMonth: idMonth == freezed ? _value.idMonth : idMonth as String,
      idYear: idYear == freezed ? _value.idYear : idYear as String,
      picture: picture == freezed ? _value.picture : picture as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_IdCard implements _IdCard {
  _$_IdCard(
      {@JsonKey(name: 'identity_type') this.identityType,
      @JsonKey(name: 'name_on_id') this.nameOnId,
      @JsonKey(name: 'identityCode') this.identityCode,
      @JsonKey(name: 'idmonth') this.idMonth,
      @JsonKey(name: 'idyear') this.idYear,
      this.picture});

  factory _$_IdCard.fromJson(Map<String, dynamic> json) =>
      _$_$_IdCardFromJson(json);

  @override
  @JsonKey(name: 'identity_type')
  final String identityType;
  @override
  @JsonKey(name: 'name_on_id')
  final String nameOnId;
  @override
  @JsonKey(name: 'identityCode')
  final String identityCode;
  @override
  @JsonKey(name: 'idmonth')
  final String idMonth;
  @override
  @JsonKey(name: 'idyear')
  final String idYear;
  @override
  final String picture;

  @override
  String toString() {
    return 'IdCard(identityType: $identityType, nameOnId: $nameOnId, identityCode: $identityCode, idMonth: $idMonth, idYear: $idYear, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdCard &&
            (identical(other.identityType, identityType) ||
                const DeepCollectionEquality()
                    .equals(other.identityType, identityType)) &&
            (identical(other.nameOnId, nameOnId) ||
                const DeepCollectionEquality()
                    .equals(other.nameOnId, nameOnId)) &&
            (identical(other.identityCode, identityCode) ||
                const DeepCollectionEquality()
                    .equals(other.identityCode, identityCode)) &&
            (identical(other.idMonth, idMonth) ||
                const DeepCollectionEquality()
                    .equals(other.idMonth, idMonth)) &&
            (identical(other.idYear, idYear) ||
                const DeepCollectionEquality().equals(other.idYear, idYear)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality().equals(other.picture, picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(identityType) ^
      const DeepCollectionEquality().hash(nameOnId) ^
      const DeepCollectionEquality().hash(identityCode) ^
      const DeepCollectionEquality().hash(idMonth) ^
      const DeepCollectionEquality().hash(idYear) ^
      const DeepCollectionEquality().hash(picture);

  @override
  _$IdCardCopyWith<_IdCard> get copyWith =>
      __$IdCardCopyWithImpl<_IdCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdCardToJson(this);
  }
}

abstract class _IdCard implements IdCard {
  factory _IdCard(
      {@JsonKey(name: 'identity_type') String identityType,
      @JsonKey(name: 'name_on_id') String nameOnId,
      @JsonKey(name: 'identityCode') String identityCode,
      @JsonKey(name: 'idmonth') String idMonth,
      @JsonKey(name: 'idyear') String idYear,
      String picture}) = _$_IdCard;

  factory _IdCard.fromJson(Map<String, dynamic> json) = _$_IdCard.fromJson;

  @override
  @JsonKey(name: 'identity_type')
  String get identityType;
  @override
  @JsonKey(name: 'name_on_id')
  String get nameOnId;
  @override
  @JsonKey(name: 'identityCode')
  String get identityCode;
  @override
  @JsonKey(name: 'idmonth')
  String get idMonth;
  @override
  @JsonKey(name: 'idyear')
  String get idYear;
  @override
  String get picture;
  @override
  _$IdCardCopyWith<_IdCard> get copyWith;
}
