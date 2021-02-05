// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Timeline _$TimelineFromJson(Map<String, dynamic> json) {
  return _Timeline.fromJson(json);
}

/// @nodoc
class _$TimelineTearOff {
  const _$TimelineTearOff();

// ignore: unused_element
  _Timeline call(
      {@nullable
      @JsonKey(name: 'TIMELINE_ID')
          String timelineId,
      @nullable
      @JsonKey(name: 'TIMELINE_ACTIVITY')
          String timelineActivity,
      @nullable
      @JsonKey(name: 'EXECUTOR_ID')
          dynamic executorId,
      @nullable
      @JsonKey(name: 'DATE_ADDED')
          String dateAdded,
      @nullable
      @JsonKey(name: 'REQUEST_ID')
          dynamic requestId,
      @nullable
      @JsonKey(name: 'BORROWER_ID')
          String borrowerId,
      @nullable
      @JsonKey(name: 'LENDER_ID')
          String lenderId,
      @nullable
      @JsonKey(name: 'IS_TEST')
          String isTest,
      @nullable
      @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
          String showInNotification,
      @nullable
      @JsonKey(name: 'NOTIFICATION_TYPE')
          String notificationType,
      @nullable
      @JsonKey(name: 'PEOPLE_PEOPLE_ID')
          dynamic peoplePeopleId,
      @nullable
      @JsonKey(name: 'HAS_VIEWED')
          dynamic hasViewed,
      @nullable
      @JsonKey(name: 'NOTIFICATION_SENT')
          String notificationSent,
      @JsonKey(name: 'LEGAL_NAME')
          dynamic legalName}) {
    return _Timeline(
      timelineId: timelineId,
      timelineActivity: timelineActivity,
      executorId: executorId,
      dateAdded: dateAdded,
      requestId: requestId,
      borrowerId: borrowerId,
      lenderId: lenderId,
      isTest: isTest,
      showInNotification: showInNotification,
      notificationType: notificationType,
      peoplePeopleId: peoplePeopleId,
      hasViewed: hasViewed,
      notificationSent: notificationSent,
      legalName: legalName,
    );
  }

// ignore: unused_element
  Timeline fromJson(Map<String, Object> json) {
    return Timeline.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Timeline = _$TimelineTearOff();

/// @nodoc
mixin _$Timeline {
  @nullable
  @JsonKey(name: 'TIMELINE_ID')
  String get timelineId;
  @nullable
  @JsonKey(name: 'TIMELINE_ACTIVITY')
  String get timelineActivity;
  @nullable
  @JsonKey(name: 'EXECUTOR_ID')
  dynamic get executorId;
  @nullable
  @JsonKey(name: 'DATE_ADDED')
  String get dateAdded;
  @nullable
  @JsonKey(name: 'REQUEST_ID')
  dynamic get requestId;
  @nullable
  @JsonKey(name: 'BORROWER_ID')
  String get borrowerId;
  @nullable
  @JsonKey(name: 'LENDER_ID')
  String get lenderId;
  @nullable
  @JsonKey(name: 'IS_TEST')
  String get isTest;
  @nullable
  @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
  String get showInNotification;
  @nullable
  @JsonKey(name: 'NOTIFICATION_TYPE')
  String get notificationType;
  @nullable
  @JsonKey(name: 'PEOPLE_PEOPLE_ID')
  dynamic get peoplePeopleId;
  @nullable
  @JsonKey(name: 'HAS_VIEWED')
  dynamic get hasViewed;
  @nullable
  @JsonKey(name: 'NOTIFICATION_SENT')
  String get notificationSent;
  @JsonKey(name: 'LEGAL_NAME')
  dynamic get legalName;

  Map<String, dynamic> toJson();
  $TimelineCopyWith<Timeline> get copyWith;
}

/// @nodoc
abstract class $TimelineCopyWith<$Res> {
  factory $TimelineCopyWith(Timeline value, $Res Function(Timeline) then) =
      _$TimelineCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(name: 'TIMELINE_ID')
          String timelineId,
      @nullable
      @JsonKey(name: 'TIMELINE_ACTIVITY')
          String timelineActivity,
      @nullable
      @JsonKey(name: 'EXECUTOR_ID')
          dynamic executorId,
      @nullable
      @JsonKey(name: 'DATE_ADDED')
          String dateAdded,
      @nullable
      @JsonKey(name: 'REQUEST_ID')
          dynamic requestId,
      @nullable
      @JsonKey(name: 'BORROWER_ID')
          String borrowerId,
      @nullable
      @JsonKey(name: 'LENDER_ID')
          String lenderId,
      @nullable
      @JsonKey(name: 'IS_TEST')
          String isTest,
      @nullable
      @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
          String showInNotification,
      @nullable
      @JsonKey(name: 'NOTIFICATION_TYPE')
          String notificationType,
      @nullable
      @JsonKey(name: 'PEOPLE_PEOPLE_ID')
          dynamic peoplePeopleId,
      @nullable
      @JsonKey(name: 'HAS_VIEWED')
          dynamic hasViewed,
      @nullable
      @JsonKey(name: 'NOTIFICATION_SENT')
          String notificationSent,
      @JsonKey(name: 'LEGAL_NAME')
          dynamic legalName});
}

/// @nodoc
class _$TimelineCopyWithImpl<$Res> implements $TimelineCopyWith<$Res> {
  _$TimelineCopyWithImpl(this._value, this._then);

  final Timeline _value;
  // ignore: unused_field
  final $Res Function(Timeline) _then;

  @override
  $Res call({
    Object timelineId = freezed,
    Object timelineActivity = freezed,
    Object executorId = freezed,
    Object dateAdded = freezed,
    Object requestId = freezed,
    Object borrowerId = freezed,
    Object lenderId = freezed,
    Object isTest = freezed,
    Object showInNotification = freezed,
    Object notificationType = freezed,
    Object peoplePeopleId = freezed,
    Object hasViewed = freezed,
    Object notificationSent = freezed,
    Object legalName = freezed,
  }) {
    return _then(_value.copyWith(
      timelineId:
          timelineId == freezed ? _value.timelineId : timelineId as String,
      timelineActivity: timelineActivity == freezed
          ? _value.timelineActivity
          : timelineActivity as String,
      executorId:
          executorId == freezed ? _value.executorId : executorId as dynamic,
      dateAdded: dateAdded == freezed ? _value.dateAdded : dateAdded as String,
      requestId: requestId == freezed ? _value.requestId : requestId as dynamic,
      borrowerId:
          borrowerId == freezed ? _value.borrowerId : borrowerId as String,
      lenderId: lenderId == freezed ? _value.lenderId : lenderId as String,
      isTest: isTest == freezed ? _value.isTest : isTest as String,
      showInNotification: showInNotification == freezed
          ? _value.showInNotification
          : showInNotification as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType as String,
      peoplePeopleId: peoplePeopleId == freezed
          ? _value.peoplePeopleId
          : peoplePeopleId as dynamic,
      hasViewed: hasViewed == freezed ? _value.hasViewed : hasViewed as dynamic,
      notificationSent: notificationSent == freezed
          ? _value.notificationSent
          : notificationSent as String,
      legalName: legalName == freezed ? _value.legalName : legalName as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$TimelineCopyWith<$Res> implements $TimelineCopyWith<$Res> {
  factory _$TimelineCopyWith(_Timeline value, $Res Function(_Timeline) then) =
      __$TimelineCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(name: 'TIMELINE_ID')
          String timelineId,
      @nullable
      @JsonKey(name: 'TIMELINE_ACTIVITY')
          String timelineActivity,
      @nullable
      @JsonKey(name: 'EXECUTOR_ID')
          dynamic executorId,
      @nullable
      @JsonKey(name: 'DATE_ADDED')
          String dateAdded,
      @nullable
      @JsonKey(name: 'REQUEST_ID')
          dynamic requestId,
      @nullable
      @JsonKey(name: 'BORROWER_ID')
          String borrowerId,
      @nullable
      @JsonKey(name: 'LENDER_ID')
          String lenderId,
      @nullable
      @JsonKey(name: 'IS_TEST')
          String isTest,
      @nullable
      @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
          String showInNotification,
      @nullable
      @JsonKey(name: 'NOTIFICATION_TYPE')
          String notificationType,
      @nullable
      @JsonKey(name: 'PEOPLE_PEOPLE_ID')
          dynamic peoplePeopleId,
      @nullable
      @JsonKey(name: 'HAS_VIEWED')
          dynamic hasViewed,
      @nullable
      @JsonKey(name: 'NOTIFICATION_SENT')
          String notificationSent,
      @JsonKey(name: 'LEGAL_NAME')
          dynamic legalName});
}

/// @nodoc
class __$TimelineCopyWithImpl<$Res> extends _$TimelineCopyWithImpl<$Res>
    implements _$TimelineCopyWith<$Res> {
  __$TimelineCopyWithImpl(_Timeline _value, $Res Function(_Timeline) _then)
      : super(_value, (v) => _then(v as _Timeline));

  @override
  _Timeline get _value => super._value as _Timeline;

  @override
  $Res call({
    Object timelineId = freezed,
    Object timelineActivity = freezed,
    Object executorId = freezed,
    Object dateAdded = freezed,
    Object requestId = freezed,
    Object borrowerId = freezed,
    Object lenderId = freezed,
    Object isTest = freezed,
    Object showInNotification = freezed,
    Object notificationType = freezed,
    Object peoplePeopleId = freezed,
    Object hasViewed = freezed,
    Object notificationSent = freezed,
    Object legalName = freezed,
  }) {
    return _then(_Timeline(
      timelineId:
          timelineId == freezed ? _value.timelineId : timelineId as String,
      timelineActivity: timelineActivity == freezed
          ? _value.timelineActivity
          : timelineActivity as String,
      executorId:
          executorId == freezed ? _value.executorId : executorId as dynamic,
      dateAdded: dateAdded == freezed ? _value.dateAdded : dateAdded as String,
      requestId: requestId == freezed ? _value.requestId : requestId as dynamic,
      borrowerId:
          borrowerId == freezed ? _value.borrowerId : borrowerId as String,
      lenderId: lenderId == freezed ? _value.lenderId : lenderId as String,
      isTest: isTest == freezed ? _value.isTest : isTest as String,
      showInNotification: showInNotification == freezed
          ? _value.showInNotification
          : showInNotification as String,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType as String,
      peoplePeopleId: peoplePeopleId == freezed
          ? _value.peoplePeopleId
          : peoplePeopleId as dynamic,
      hasViewed: hasViewed == freezed ? _value.hasViewed : hasViewed as dynamic,
      notificationSent: notificationSent == freezed
          ? _value.notificationSent
          : notificationSent as String,
      legalName: legalName == freezed ? _value.legalName : legalName as dynamic,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Timeline implements _Timeline {
  _$_Timeline(
      {@nullable @JsonKey(name: 'TIMELINE_ID') this.timelineId,
      @nullable @JsonKey(name: 'TIMELINE_ACTIVITY') this.timelineActivity,
      @nullable @JsonKey(name: 'EXECUTOR_ID') this.executorId,
      @nullable @JsonKey(name: 'DATE_ADDED') this.dateAdded,
      @nullable @JsonKey(name: 'REQUEST_ID') this.requestId,
      @nullable @JsonKey(name: 'BORROWER_ID') this.borrowerId,
      @nullable @JsonKey(name: 'LENDER_ID') this.lenderId,
      @nullable @JsonKey(name: 'IS_TEST') this.isTest,
      @nullable @JsonKey(name: 'SHOW_IN_NOTIFICATIONS') this.showInNotification,
      @nullable @JsonKey(name: 'NOTIFICATION_TYPE') this.notificationType,
      @nullable @JsonKey(name: 'PEOPLE_PEOPLE_ID') this.peoplePeopleId,
      @nullable @JsonKey(name: 'HAS_VIEWED') this.hasViewed,
      @nullable @JsonKey(name: 'NOTIFICATION_SENT') this.notificationSent,
      @JsonKey(name: 'LEGAL_NAME') this.legalName});

  factory _$_Timeline.fromJson(Map<String, dynamic> json) =>
      _$_$_TimelineFromJson(json);

  @override
  @nullable
  @JsonKey(name: 'TIMELINE_ID')
  final String timelineId;
  @override
  @nullable
  @JsonKey(name: 'TIMELINE_ACTIVITY')
  final String timelineActivity;
  @override
  @nullable
  @JsonKey(name: 'EXECUTOR_ID')
  final dynamic executorId;
  @override
  @nullable
  @JsonKey(name: 'DATE_ADDED')
  final String dateAdded;
  @override
  @nullable
  @JsonKey(name: 'REQUEST_ID')
  final dynamic requestId;
  @override
  @nullable
  @JsonKey(name: 'BORROWER_ID')
  final String borrowerId;
  @override
  @nullable
  @JsonKey(name: 'LENDER_ID')
  final String lenderId;
  @override
  @nullable
  @JsonKey(name: 'IS_TEST')
  final String isTest;
  @override
  @nullable
  @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
  final String showInNotification;
  @override
  @nullable
  @JsonKey(name: 'NOTIFICATION_TYPE')
  final String notificationType;
  @override
  @nullable
  @JsonKey(name: 'PEOPLE_PEOPLE_ID')
  final dynamic peoplePeopleId;
  @override
  @nullable
  @JsonKey(name: 'HAS_VIEWED')
  final dynamic hasViewed;
  @override
  @nullable
  @JsonKey(name: 'NOTIFICATION_SENT')
  final String notificationSent;
  @override
  @JsonKey(name: 'LEGAL_NAME')
  final dynamic legalName;

  @override
  String toString() {
    return 'Timeline(timelineId: $timelineId, timelineActivity: $timelineActivity, executorId: $executorId, dateAdded: $dateAdded, requestId: $requestId, borrowerId: $borrowerId, lenderId: $lenderId, isTest: $isTest, showInNotification: $showInNotification, notificationType: $notificationType, peoplePeopleId: $peoplePeopleId, hasViewed: $hasViewed, notificationSent: $notificationSent, legalName: $legalName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Timeline &&
            (identical(other.timelineId, timelineId) ||
                const DeepCollectionEquality()
                    .equals(other.timelineId, timelineId)) &&
            (identical(other.timelineActivity, timelineActivity) ||
                const DeepCollectionEquality()
                    .equals(other.timelineActivity, timelineActivity)) &&
            (identical(other.executorId, executorId) ||
                const DeepCollectionEquality()
                    .equals(other.executorId, executorId)) &&
            (identical(other.dateAdded, dateAdded) ||
                const DeepCollectionEquality()
                    .equals(other.dateAdded, dateAdded)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.borrowerId, borrowerId) ||
                const DeepCollectionEquality()
                    .equals(other.borrowerId, borrowerId)) &&
            (identical(other.lenderId, lenderId) ||
                const DeepCollectionEquality()
                    .equals(other.lenderId, lenderId)) &&
            (identical(other.isTest, isTest) ||
                const DeepCollectionEquality().equals(other.isTest, isTest)) &&
            (identical(other.showInNotification, showInNotification) ||
                const DeepCollectionEquality()
                    .equals(other.showInNotification, showInNotification)) &&
            (identical(other.notificationType, notificationType) ||
                const DeepCollectionEquality()
                    .equals(other.notificationType, notificationType)) &&
            (identical(other.peoplePeopleId, peoplePeopleId) ||
                const DeepCollectionEquality()
                    .equals(other.peoplePeopleId, peoplePeopleId)) &&
            (identical(other.hasViewed, hasViewed) ||
                const DeepCollectionEquality()
                    .equals(other.hasViewed, hasViewed)) &&
            (identical(other.notificationSent, notificationSent) ||
                const DeepCollectionEquality()
                    .equals(other.notificationSent, notificationSent)) &&
            (identical(other.legalName, legalName) ||
                const DeepCollectionEquality()
                    .equals(other.legalName, legalName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timelineId) ^
      const DeepCollectionEquality().hash(timelineActivity) ^
      const DeepCollectionEquality().hash(executorId) ^
      const DeepCollectionEquality().hash(dateAdded) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(borrowerId) ^
      const DeepCollectionEquality().hash(lenderId) ^
      const DeepCollectionEquality().hash(isTest) ^
      const DeepCollectionEquality().hash(showInNotification) ^
      const DeepCollectionEquality().hash(notificationType) ^
      const DeepCollectionEquality().hash(peoplePeopleId) ^
      const DeepCollectionEquality().hash(hasViewed) ^
      const DeepCollectionEquality().hash(notificationSent) ^
      const DeepCollectionEquality().hash(legalName);

  @override
  _$TimelineCopyWith<_Timeline> get copyWith =>
      __$TimelineCopyWithImpl<_Timeline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimelineToJson(this);
  }
}

abstract class _Timeline implements Timeline {
  factory _Timeline(
      {@nullable
      @JsonKey(name: 'TIMELINE_ID')
          String timelineId,
      @nullable
      @JsonKey(name: 'TIMELINE_ACTIVITY')
          String timelineActivity,
      @nullable
      @JsonKey(name: 'EXECUTOR_ID')
          dynamic executorId,
      @nullable
      @JsonKey(name: 'DATE_ADDED')
          String dateAdded,
      @nullable
      @JsonKey(name: 'REQUEST_ID')
          dynamic requestId,
      @nullable
      @JsonKey(name: 'BORROWER_ID')
          String borrowerId,
      @nullable
      @JsonKey(name: 'LENDER_ID')
          String lenderId,
      @nullable
      @JsonKey(name: 'IS_TEST')
          String isTest,
      @nullable
      @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
          String showInNotification,
      @nullable
      @JsonKey(name: 'NOTIFICATION_TYPE')
          String notificationType,
      @nullable
      @JsonKey(name: 'PEOPLE_PEOPLE_ID')
          dynamic peoplePeopleId,
      @nullable
      @JsonKey(name: 'HAS_VIEWED')
          dynamic hasViewed,
      @nullable
      @JsonKey(name: 'NOTIFICATION_SENT')
          String notificationSent,
      @JsonKey(name: 'LEGAL_NAME')
          dynamic legalName}) = _$_Timeline;

  factory _Timeline.fromJson(Map<String, dynamic> json) = _$_Timeline.fromJson;

  @override
  @nullable
  @JsonKey(name: 'TIMELINE_ID')
  String get timelineId;
  @override
  @nullable
  @JsonKey(name: 'TIMELINE_ACTIVITY')
  String get timelineActivity;
  @override
  @nullable
  @JsonKey(name: 'EXECUTOR_ID')
  dynamic get executorId;
  @override
  @nullable
  @JsonKey(name: 'DATE_ADDED')
  String get dateAdded;
  @override
  @nullable
  @JsonKey(name: 'REQUEST_ID')
  dynamic get requestId;
  @override
  @nullable
  @JsonKey(name: 'BORROWER_ID')
  String get borrowerId;
  @override
  @nullable
  @JsonKey(name: 'LENDER_ID')
  String get lenderId;
  @override
  @nullable
  @JsonKey(name: 'IS_TEST')
  String get isTest;
  @override
  @nullable
  @JsonKey(name: 'SHOW_IN_NOTIFICATIONS')
  String get showInNotification;
  @override
  @nullable
  @JsonKey(name: 'NOTIFICATION_TYPE')
  String get notificationType;
  @override
  @nullable
  @JsonKey(name: 'PEOPLE_PEOPLE_ID')
  dynamic get peoplePeopleId;
  @override
  @nullable
  @JsonKey(name: 'HAS_VIEWED')
  dynamic get hasViewed;
  @override
  @nullable
  @JsonKey(name: 'NOTIFICATION_SENT')
  String get notificationSent;
  @override
  @JsonKey(name: 'LEGAL_NAME')
  dynamic get legalName;
  @override
  _$TimelineCopyWith<_Timeline> get copyWith;
}
