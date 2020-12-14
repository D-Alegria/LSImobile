import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeline.freezed.dart';

part 'timeline.g.dart';

@freezed
abstract class Timeline with _$Timeline {
  @JsonSerializable(explicitToJson: true)
  factory Timeline({
    @nullable @JsonKey(name: "TIMELINE_ID") String timelineId,
    @nullable @JsonKey(name: "TIMELINE_ACTIVITY") String timelineActivity,
    @nullable @JsonKey(name: "EXECUTOR_ID") dynamic executorId,
    @nullable @JsonKey(name: "DATE_ADDED") String dateAdded,
    @nullable @JsonKey(name: "REQUEST_ID") dynamic requestId,
    @nullable @JsonKey(name: "BORROWER_ID") String borrowerId,
    @nullable @JsonKey(name: "LENDER_ID") String lenderId,
    @nullable @JsonKey(name: "IS_TEST") String isTest,
    @nullable @JsonKey(name: "SHOW_IN_NOTIFICATIONS") String showInNotification,
    @nullable @JsonKey(name: "NOTIFICATION_TYPE") String notificationType,
    @nullable @JsonKey(name: "PEOPLE_PEOPLE_ID") dynamic peoplePeopleId,
    @nullable @JsonKey(name: "HAS_VIEWED") dynamic hasViewed,
    @nullable @JsonKey(name: "NOTIFICATION_SENT") String notificationSent,
    @JsonKey(name: "LEGAL_NAME") dynamic legalName,
  }) = _Timeline;

  factory Timeline.fromJson(Map<String, dynamic> json) =>
      _$TimelineFromJson(json);
}
