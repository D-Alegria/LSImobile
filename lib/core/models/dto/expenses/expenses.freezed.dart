// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'expenses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Expenses _$ExpensesFromJson(Map<String, dynamic> json) {
  return _Expenses.fromJson(json);
}

/// @nodoc
class _$ExpensesTearOff {
  const _$ExpensesTearOff();

// ignore: unused_element
  _Expenses call(
      {@nullable
      @JsonKey(name: 'monthly_rent_expenses')
          String monthlyRentExpenses,
      @nullable
      @JsonKey(name: 'monthly_tel_internet')
          String monthlyTelInternet,
      @nullable
      @JsonKey(name: 'monthly_transport')
          String monthlyTransport}) {
    return _Expenses(
      monthlyRentExpenses: monthlyRentExpenses,
      monthlyTelInternet: monthlyTelInternet,
      monthlyTransport: monthlyTransport,
    );
  }

// ignore: unused_element
  Expenses fromJson(Map<String, Object> json) {
    return Expenses.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Expenses = _$ExpensesTearOff();

/// @nodoc
mixin _$Expenses {
  @nullable
  @JsonKey(name: 'monthly_rent_expenses')
  String get monthlyRentExpenses;
  @nullable
  @JsonKey(name: 'monthly_tel_internet')
  String get monthlyTelInternet;
  @nullable
  @JsonKey(name: 'monthly_transport')
  String get monthlyTransport;

  Map<String, dynamic> toJson();
  $ExpensesCopyWith<Expenses> get copyWith;
}

/// @nodoc
abstract class $ExpensesCopyWith<$Res> {
  factory $ExpensesCopyWith(Expenses value, $Res Function(Expenses) then) =
      _$ExpensesCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(name: 'monthly_rent_expenses')
          String monthlyRentExpenses,
      @nullable
      @JsonKey(name: 'monthly_tel_internet')
          String monthlyTelInternet,
      @nullable
      @JsonKey(name: 'monthly_transport')
          String monthlyTransport});
}

/// @nodoc
class _$ExpensesCopyWithImpl<$Res> implements $ExpensesCopyWith<$Res> {
  _$ExpensesCopyWithImpl(this._value, this._then);

  final Expenses _value;
  // ignore: unused_field
  final $Res Function(Expenses) _then;

  @override
  $Res call({
    Object monthlyRentExpenses = freezed,
    Object monthlyTelInternet = freezed,
    Object monthlyTransport = freezed,
  }) {
    return _then(_value.copyWith(
      monthlyRentExpenses: monthlyRentExpenses == freezed
          ? _value.monthlyRentExpenses
          : monthlyRentExpenses as String,
      monthlyTelInternet: monthlyTelInternet == freezed
          ? _value.monthlyTelInternet
          : monthlyTelInternet as String,
      monthlyTransport: monthlyTransport == freezed
          ? _value.monthlyTransport
          : monthlyTransport as String,
    ));
  }
}

/// @nodoc
abstract class _$ExpensesCopyWith<$Res> implements $ExpensesCopyWith<$Res> {
  factory _$ExpensesCopyWith(_Expenses value, $Res Function(_Expenses) then) =
      __$ExpensesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(name: 'monthly_rent_expenses')
          String monthlyRentExpenses,
      @nullable
      @JsonKey(name: 'monthly_tel_internet')
          String monthlyTelInternet,
      @nullable
      @JsonKey(name: 'monthly_transport')
          String monthlyTransport});
}

/// @nodoc
class __$ExpensesCopyWithImpl<$Res> extends _$ExpensesCopyWithImpl<$Res>
    implements _$ExpensesCopyWith<$Res> {
  __$ExpensesCopyWithImpl(_Expenses _value, $Res Function(_Expenses) _then)
      : super(_value, (v) => _then(v as _Expenses));

  @override
  _Expenses get _value => super._value as _Expenses;

  @override
  $Res call({
    Object monthlyRentExpenses = freezed,
    Object monthlyTelInternet = freezed,
    Object monthlyTransport = freezed,
  }) {
    return _then(_Expenses(
      monthlyRentExpenses: monthlyRentExpenses == freezed
          ? _value.monthlyRentExpenses
          : monthlyRentExpenses as String,
      monthlyTelInternet: monthlyTelInternet == freezed
          ? _value.monthlyTelInternet
          : monthlyTelInternet as String,
      monthlyTransport: monthlyTransport == freezed
          ? _value.monthlyTransport
          : monthlyTransport as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Expenses implements _Expenses {
  _$_Expenses(
      {@nullable
      @JsonKey(name: 'monthly_rent_expenses')
          this.monthlyRentExpenses,
      @nullable
      @JsonKey(name: 'monthly_tel_internet')
          this.monthlyTelInternet,
      @nullable
      @JsonKey(name: 'monthly_transport')
          this.monthlyTransport});

  factory _$_Expenses.fromJson(Map<String, dynamic> json) =>
      _$_$_ExpensesFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'monthly_rent_expenses')
  final String monthlyRentExpenses;
  @override
  @nullable
  @JsonKey(name: 'monthly_tel_internet')
  final String monthlyTelInternet;
  @override
  @nullable
  @JsonKey(name: 'monthly_transport')
  final String monthlyTransport;

  @override
  String toString() {
    return 'Expenses(monthlyRentExpenses: $monthlyRentExpenses, monthlyTelInternet: $monthlyTelInternet, monthlyTransport: $monthlyTransport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Expenses &&
            (identical(other.monthlyRentExpenses, monthlyRentExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyRentExpenses, monthlyRentExpenses)) &&
            (identical(other.monthlyTelInternet, monthlyTelInternet) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyTelInternet, monthlyTelInternet)) &&
            (identical(other.monthlyTransport, monthlyTransport) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyTransport, monthlyTransport)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(monthlyRentExpenses) ^
      const DeepCollectionEquality().hash(monthlyTelInternet) ^
      const DeepCollectionEquality().hash(monthlyTransport);

  @override
  _$ExpensesCopyWith<_Expenses> get copyWith =>
      __$ExpensesCopyWithImpl<_Expenses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExpensesToJson(this);
  }
}

abstract class _Expenses implements Expenses {
  factory _Expenses(
      {@nullable
      @JsonKey(name: 'monthly_rent_expenses')
          String monthlyRentExpenses,
      @nullable
      @JsonKey(name: 'monthly_tel_internet')
          String monthlyTelInternet,
      @nullable
      @JsonKey(name: 'monthly_transport')
          String monthlyTransport}) = _$_Expenses;

  factory _Expenses.fromJson(Map<String, dynamic> json) = _$_Expenses.fromJson;

  @override
  @nullable
  @JsonKey(name: 'monthly_rent_expenses')
  String get monthlyRentExpenses;
  @override
  @nullable
  @JsonKey(name: 'monthly_tel_internet')
  String get monthlyTelInternet;
  @override
  @nullable
  @JsonKey(name: 'monthly_transport')
  String get monthlyTransport;
  @override
  _$ExpensesCopyWith<_Expenses> get copyWith;
}
