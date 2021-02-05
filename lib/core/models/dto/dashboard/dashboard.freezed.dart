// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Dashboard _$DashboardFromJson(Map<String, dynamic> json) {
  return _Dashboard.fromJson(json);
}

/// @nodoc
class _$DashboardTearOff {
  const _$DashboardTearOff();

// ignore: unused_element
  _Dashboard call(
      {@nullable @JsonKey(name: 'total_loans') String totalLoans,
      @nullable @JsonKey(name: 'active_loans') String activeLoans,
      @nullable @JsonKey(name: 'pending_payments') dynamic pendingPayments}) {
    return _Dashboard(
      totalLoans: totalLoans,
      activeLoans: activeLoans,
      pendingPayments: pendingPayments,
    );
  }

// ignore: unused_element
  Dashboard fromJson(Map<String, Object> json) {
    return Dashboard.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Dashboard = _$DashboardTearOff();

/// @nodoc
mixin _$Dashboard {
  @nullable
  @JsonKey(name: 'total_loans')
  String get totalLoans;
  @nullable
  @JsonKey(name: 'active_loans')
  String get activeLoans;
  @nullable
  @JsonKey(name: 'pending_payments')
  dynamic get pendingPayments;

  Map<String, dynamic> toJson();
  $DashboardCopyWith<Dashboard> get copyWith;
}

/// @nodoc
abstract class $DashboardCopyWith<$Res> {
  factory $DashboardCopyWith(Dashboard value, $Res Function(Dashboard) then) =
      _$DashboardCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(name: 'total_loans') String totalLoans,
      @nullable @JsonKey(name: 'active_loans') String activeLoans,
      @nullable @JsonKey(name: 'pending_payments') dynamic pendingPayments});
}

/// @nodoc
class _$DashboardCopyWithImpl<$Res> implements $DashboardCopyWith<$Res> {
  _$DashboardCopyWithImpl(this._value, this._then);

  final Dashboard _value;
  // ignore: unused_field
  final $Res Function(Dashboard) _then;

  @override
  $Res call({
    Object totalLoans = freezed,
    Object activeLoans = freezed,
    Object pendingPayments = freezed,
  }) {
    return _then(_value.copyWith(
      totalLoans:
          totalLoans == freezed ? _value.totalLoans : totalLoans as String,
      activeLoans:
          activeLoans == freezed ? _value.activeLoans : activeLoans as String,
      pendingPayments: pendingPayments == freezed
          ? _value.pendingPayments
          : pendingPayments as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$DashboardCopyWith<$Res> implements $DashboardCopyWith<$Res> {
  factory _$DashboardCopyWith(
          _Dashboard value, $Res Function(_Dashboard) then) =
      __$DashboardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(name: 'total_loans') String totalLoans,
      @nullable @JsonKey(name: 'active_loans') String activeLoans,
      @nullable @JsonKey(name: 'pending_payments') dynamic pendingPayments});
}

/// @nodoc
class __$DashboardCopyWithImpl<$Res> extends _$DashboardCopyWithImpl<$Res>
    implements _$DashboardCopyWith<$Res> {
  __$DashboardCopyWithImpl(_Dashboard _value, $Res Function(_Dashboard) _then)
      : super(_value, (v) => _then(v as _Dashboard));

  @override
  _Dashboard get _value => super._value as _Dashboard;

  @override
  $Res call({
    Object totalLoans = freezed,
    Object activeLoans = freezed,
    Object pendingPayments = freezed,
  }) {
    return _then(_Dashboard(
      totalLoans:
          totalLoans == freezed ? _value.totalLoans : totalLoans as String,
      activeLoans:
          activeLoans == freezed ? _value.activeLoans : activeLoans as String,
      pendingPayments: pendingPayments == freezed
          ? _value.pendingPayments
          : pendingPayments as dynamic,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Dashboard implements _Dashboard {
  _$_Dashboard(
      {@nullable @JsonKey(name: 'total_loans') this.totalLoans,
      @nullable @JsonKey(name: 'active_loans') this.activeLoans,
      @nullable @JsonKey(name: 'pending_payments') this.pendingPayments});

  factory _$_Dashboard.fromJson(Map<String, dynamic> json) =>
      _$_$_DashboardFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'total_loans')
  final String totalLoans;
  @override
  @nullable
  @JsonKey(name: 'active_loans')
  final String activeLoans;
  @override
  @nullable
  @JsonKey(name: 'pending_payments')
  final dynamic pendingPayments;

  @override
  String toString() {
    return 'Dashboard(totalLoans: $totalLoans, activeLoans: $activeLoans, pendingPayments: $pendingPayments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dashboard &&
            (identical(other.totalLoans, totalLoans) ||
                const DeepCollectionEquality()
                    .equals(other.totalLoans, totalLoans)) &&
            (identical(other.activeLoans, activeLoans) ||
                const DeepCollectionEquality()
                    .equals(other.activeLoans, activeLoans)) &&
            (identical(other.pendingPayments, pendingPayments) ||
                const DeepCollectionEquality()
                    .equals(other.pendingPayments, pendingPayments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalLoans) ^
      const DeepCollectionEquality().hash(activeLoans) ^
      const DeepCollectionEquality().hash(pendingPayments);

  @override
  _$DashboardCopyWith<_Dashboard> get copyWith =>
      __$DashboardCopyWithImpl<_Dashboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DashboardToJson(this);
  }
}

abstract class _Dashboard implements Dashboard {
  factory _Dashboard(
      {@nullable
      @JsonKey(name: 'total_loans')
          String totalLoans,
      @nullable
      @JsonKey(name: 'active_loans')
          String activeLoans,
      @nullable
      @JsonKey(name: 'pending_payments')
          dynamic pendingPayments}) = _$_Dashboard;

  factory _Dashboard.fromJson(Map<String, dynamic> json) =
      _$_Dashboard.fromJson;

  @override
  @nullable
  @JsonKey(name: 'total_loans')
  String get totalLoans;
  @override
  @nullable
  @JsonKey(name: 'active_loans')
  String get activeLoans;
  @override
  @nullable
  @JsonKey(name: 'pending_payments')
  dynamic get pendingPayments;
  @override
  _$DashboardCopyWith<_Dashboard> get copyWith;
}
