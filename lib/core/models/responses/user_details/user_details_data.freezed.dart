// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_details_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDetailsData _$UserDetailsDataFromJson(Map<String, dynamic> json) {
  return _UserDetailsData.fromJson(json);
}

/// @nodoc
class _$UserDetailsDataTearOff {
  const _$UserDetailsDataTearOff();

// ignore: unused_element
  _UserDetailsData call(
      {@nullable Validations validations,
      @nullable UserData userData,
      @nullable LoanHistory loanHistory,
      @nullable @JsonKey(name: 'total_loans') int totalLoans,
      @nullable @JsonKey(name: 'total_investments') int totalInvestments,
      @nullable dynamic checklist,
      @nullable Dashboard dashboard,
      @nullable @JsonKey(name: 'people_id') String peopleId,
      @nullable List<Timeline> timeline}) {
    return _UserDetailsData(
      validations: validations,
      userData: userData,
      loanHistory: loanHistory,
      totalLoans: totalLoans,
      totalInvestments: totalInvestments,
      checklist: checklist,
      dashboard: dashboard,
      peopleId: peopleId,
      timeline: timeline,
    );
  }

// ignore: unused_element
  UserDetailsData fromJson(Map<String, Object> json) {
    return UserDetailsData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDetailsData = _$UserDetailsDataTearOff();

/// @nodoc
mixin _$UserDetailsData {
  @nullable
  Validations get validations;
  @nullable
  UserData get userData;
  @nullable
  LoanHistory get loanHistory;
  @nullable
  @JsonKey(name: 'total_loans')
  int get totalLoans;
  @nullable
  @JsonKey(name: 'total_investments')
  int get totalInvestments;
  @nullable
  dynamic get checklist;
  @nullable
  Dashboard get dashboard;
  @nullable
  @JsonKey(name: 'people_id')
  String get peopleId;
  @nullable
  List<Timeline> get timeline;

  Map<String, dynamic> toJson();
  $UserDetailsDataCopyWith<UserDetailsData> get copyWith;
}

/// @nodoc
abstract class $UserDetailsDataCopyWith<$Res> {
  factory $UserDetailsDataCopyWith(
          UserDetailsData value, $Res Function(UserDetailsData) then) =
      _$UserDetailsDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable Validations validations,
      @nullable UserData userData,
      @nullable LoanHistory loanHistory,
      @nullable @JsonKey(name: 'total_loans') int totalLoans,
      @nullable @JsonKey(name: 'total_investments') int totalInvestments,
      @nullable dynamic checklist,
      @nullable Dashboard dashboard,
      @nullable @JsonKey(name: 'people_id') String peopleId,
      @nullable List<Timeline> timeline});
}

/// @nodoc
class _$UserDetailsDataCopyWithImpl<$Res>
    implements $UserDetailsDataCopyWith<$Res> {
  _$UserDetailsDataCopyWithImpl(this._value, this._then);

  final UserDetailsData _value;
  // ignore: unused_field
  final $Res Function(UserDetailsData) _then;

  @override
  $Res call({
    Object validations = freezed,
    Object userData = freezed,
    Object loanHistory = freezed,
    Object totalLoans = freezed,
    Object totalInvestments = freezed,
    Object checklist = freezed,
    Object dashboard = freezed,
    Object peopleId = freezed,
    Object timeline = freezed,
  }) {
    return _then(_value.copyWith(
      validations: validations == freezed
          ? _value.validations
          : validations as Validations,
      userData: userData == freezed ? _value.userData : userData as UserData,
      loanHistory: loanHistory == freezed
          ? _value.loanHistory
          : loanHistory as LoanHistory,
      totalLoans: totalLoans == freezed ? _value.totalLoans : totalLoans as int,
      totalInvestments: totalInvestments == freezed
          ? _value.totalInvestments
          : totalInvestments as int,
      checklist: checklist == freezed ? _value.checklist : checklist as dynamic,
      dashboard:
          dashboard == freezed ? _value.dashboard : dashboard as Dashboard,
      peopleId: peopleId == freezed ? _value.peopleId : peopleId as String,
      timeline:
          timeline == freezed ? _value.timeline : timeline as List<Timeline>,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailsDataCopyWith<$Res>
    implements $UserDetailsDataCopyWith<$Res> {
  factory _$UserDetailsDataCopyWith(
          _UserDetailsData value, $Res Function(_UserDetailsData) then) =
      __$UserDetailsDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Validations validations,
      @nullable UserData userData,
      @nullable LoanHistory loanHistory,
      @nullable @JsonKey(name: 'total_loans') int totalLoans,
      @nullable @JsonKey(name: 'total_investments') int totalInvestments,
      @nullable dynamic checklist,
      @nullable Dashboard dashboard,
      @nullable @JsonKey(name: 'people_id') String peopleId,
      @nullable List<Timeline> timeline});
}

/// @nodoc
class __$UserDetailsDataCopyWithImpl<$Res>
    extends _$UserDetailsDataCopyWithImpl<$Res>
    implements _$UserDetailsDataCopyWith<$Res> {
  __$UserDetailsDataCopyWithImpl(
      _UserDetailsData _value, $Res Function(_UserDetailsData) _then)
      : super(_value, (v) => _then(v as _UserDetailsData));

  @override
  _UserDetailsData get _value => super._value as _UserDetailsData;

  @override
  $Res call({
    Object validations = freezed,
    Object userData = freezed,
    Object loanHistory = freezed,
    Object totalLoans = freezed,
    Object totalInvestments = freezed,
    Object checklist = freezed,
    Object dashboard = freezed,
    Object peopleId = freezed,
    Object timeline = freezed,
  }) {
    return _then(_UserDetailsData(
      validations: validations == freezed
          ? _value.validations
          : validations as Validations,
      userData: userData == freezed ? _value.userData : userData as UserData,
      loanHistory: loanHistory == freezed
          ? _value.loanHistory
          : loanHistory as LoanHistory,
      totalLoans: totalLoans == freezed ? _value.totalLoans : totalLoans as int,
      totalInvestments: totalInvestments == freezed
          ? _value.totalInvestments
          : totalInvestments as int,
      checklist: checklist == freezed ? _value.checklist : checklist as dynamic,
      dashboard:
          dashboard == freezed ? _value.dashboard : dashboard as Dashboard,
      peopleId: peopleId == freezed ? _value.peopleId : peopleId as String,
      timeline:
          timeline == freezed ? _value.timeline : timeline as List<Timeline>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_UserDetailsData implements _UserDetailsData {
  _$_UserDetailsData(
      {@nullable this.validations,
      @nullable this.userData,
      @nullable this.loanHistory,
      @nullable @JsonKey(name: 'total_loans') this.totalLoans,
      @nullable @JsonKey(name: 'total_investments') this.totalInvestments,
      @nullable this.checklist,
      @nullable this.dashboard,
      @nullable @JsonKey(name: 'people_id') this.peopleId,
      @nullable this.timeline});

  factory _$_UserDetailsData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailsDataFromJson(json);

  @override
  @nullable
  final Validations validations;
  @override
  @nullable
  final UserData userData;
  @override
  @nullable
  final LoanHistory loanHistory;
  @override
  @nullable
  @JsonKey(name: 'total_loans')
  final int totalLoans;
  @override
  @nullable
  @JsonKey(name: 'total_investments')
  final int totalInvestments;
  @override
  @nullable
  final dynamic checklist;
  @override
  @nullable
  final Dashboard dashboard;
  @override
  @nullable
  @JsonKey(name: 'people_id')
  final String peopleId;
  @override
  @nullable
  final List<Timeline> timeline;

  @override
  String toString() {
    return 'UserDetailsData(validations: $validations, userData: $userData, loanHistory: $loanHistory, totalLoans: $totalLoans, totalInvestments: $totalInvestments, checklist: $checklist, dashboard: $dashboard, peopleId: $peopleId, timeline: $timeline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailsData &&
            (identical(other.validations, validations) ||
                const DeepCollectionEquality()
                    .equals(other.validations, validations)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.loanHistory, loanHistory) ||
                const DeepCollectionEquality()
                    .equals(other.loanHistory, loanHistory)) &&
            (identical(other.totalLoans, totalLoans) ||
                const DeepCollectionEquality()
                    .equals(other.totalLoans, totalLoans)) &&
            (identical(other.totalInvestments, totalInvestments) ||
                const DeepCollectionEquality()
                    .equals(other.totalInvestments, totalInvestments)) &&
            (identical(other.checklist, checklist) ||
                const DeepCollectionEquality()
                    .equals(other.checklist, checklist)) &&
            (identical(other.dashboard, dashboard) ||
                const DeepCollectionEquality()
                    .equals(other.dashboard, dashboard)) &&
            (identical(other.peopleId, peopleId) ||
                const DeepCollectionEquality()
                    .equals(other.peopleId, peopleId)) &&
            (identical(other.timeline, timeline) ||
                const DeepCollectionEquality()
                    .equals(other.timeline, timeline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(validations) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(loanHistory) ^
      const DeepCollectionEquality().hash(totalLoans) ^
      const DeepCollectionEquality().hash(totalInvestments) ^
      const DeepCollectionEquality().hash(checklist) ^
      const DeepCollectionEquality().hash(dashboard) ^
      const DeepCollectionEquality().hash(peopleId) ^
      const DeepCollectionEquality().hash(timeline);

  @override
  _$UserDetailsDataCopyWith<_UserDetailsData> get copyWith =>
      __$UserDetailsDataCopyWithImpl<_UserDetailsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailsDataToJson(this);
  }
}

abstract class _UserDetailsData implements UserDetailsData {
  factory _UserDetailsData(
      {@nullable Validations validations,
      @nullable UserData userData,
      @nullable LoanHistory loanHistory,
      @nullable @JsonKey(name: 'total_loans') int totalLoans,
      @nullable @JsonKey(name: 'total_investments') int totalInvestments,
      @nullable dynamic checklist,
      @nullable Dashboard dashboard,
      @nullable @JsonKey(name: 'people_id') String peopleId,
      @nullable List<Timeline> timeline}) = _$_UserDetailsData;

  factory _UserDetailsData.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsData.fromJson;

  @override
  @nullable
  Validations get validations;
  @override
  @nullable
  UserData get userData;
  @override
  @nullable
  LoanHistory get loanHistory;
  @override
  @nullable
  @JsonKey(name: 'total_loans')
  int get totalLoans;
  @override
  @nullable
  @JsonKey(name: 'total_investments')
  int get totalInvestments;
  @override
  @nullable
  dynamic get checklist;
  @override
  @nullable
  Dashboard get dashboard;
  @override
  @nullable
  @JsonKey(name: 'people_id')
  String get peopleId;
  @override
  @nullable
  List<Timeline> get timeline;
  @override
  _$UserDetailsDataCopyWith<_UserDetailsData> get copyWith;
}
