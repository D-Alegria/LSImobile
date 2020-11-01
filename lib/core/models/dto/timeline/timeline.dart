import 'package:json_annotation/json_annotation.dart';

part 'timeline.g.dart';

@JsonSerializable()
class Timeline {
  @JsonKey(name: "TIMELINE_ID")
  final String timelineId;
  @JsonKey(name: "TIMELINE_ACTIVITY")
  final String timelineActivity;
  @JsonKey(name: "EXECUTOR_ID")
  final dynamic executorId;
  @JsonKey(name: "DATE_ADDED")
  final String dateAdded;
  @JsonKey(name: "REQUEST_ID")
  final dynamic requestId;
  @JsonKey(name: "BORROWER_ID")
  final String borrowerId;
  @JsonKey(name: "LENDER_ID")
  final String lenderId;
  @JsonKey(name: "IS_TEST")
  final String isTest;
  @JsonKey(name: "SHOW_IN_NOTIFICATIONS")
  final String showInNotification;
  @JsonKey(name: "NOTIFICATION_TYPE")
  final String notificationType;
  @JsonKey(name: "PEOPLE_PEOPLE_ID")
  final dynamic peoplePeopleId;
  @JsonKey(name: "HAS_VIEWED")
  final dynamic hasViewed;
  @JsonKey(name: "NOTIFICATION_SENT")
  final String notificationSent;
  @JsonKey(name: "LEGAL_NAME")
  final dynamic legalName;

  Timeline({
    this.timelineId,
    this.timelineActivity,
    this.executorId,
    this.dateAdded,
    this.requestId,
    this.borrowerId,
    this.lenderId,
    this.isTest,
    this.showInNotification,
    this.notificationType,
    this.peoplePeopleId,
    this.hasViewed,
    this.notificationSent,
    this.legalName,
  });

  factory Timeline.fromJson(Map<String, dynamic> json) =>
      _$TimelineFromJson(json);

  Map<String, dynamic> toJson() => _$TimelineToJson(this);
}
