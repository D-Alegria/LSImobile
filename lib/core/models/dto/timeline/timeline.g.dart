// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timeline _$TimelineFromJson(Map<String, dynamic> json) {
  return Timeline(
    timelineId: json['TIMELINE_ID'] as String,
    timelineActivity: json['TIMELINE_ACTIVITY'] as String,
    executorId: json['EXECUTOR_ID'],
    dateAdded: json['DATE_ADDED'] as String,
    requestId: json['REQUEST_ID'],
    borrowerId: json['BORROWER_ID'] as String,
    lenderId: json['LENDER_ID'] as String,
    isTest: json['IS_TEST'] as String,
    showInNotification: json['SHOW_IN_NOTIFICATIONS'] as String,
    notificationType: json['NOTIFICATION_TYPE'] as String,
    peoplePeopleId: json['PEOPLE_PEOPLE_ID'],
    hasViewed: json['HAS_VIEWED'],
    notificationSent: json['NOTIFICATION_SENT'] as String,
    legalName: json['LEGAL_NAME'],
  );
}

Map<String, dynamic> _$TimelineToJson(Timeline instance) => <String, dynamic>{
      'TIMELINE_ID': instance.timelineId,
      'TIMELINE_ACTIVITY': instance.timelineActivity,
      'EXECUTOR_ID': instance.executorId,
      'DATE_ADDED': instance.dateAdded,
      'REQUEST_ID': instance.requestId,
      'BORROWER_ID': instance.borrowerId,
      'LENDER_ID': instance.lenderId,
      'IS_TEST': instance.isTest,
      'SHOW_IN_NOTIFICATIONS': instance.showInNotification,
      'NOTIFICATION_TYPE': instance.notificationType,
      'PEOPLE_PEOPLE_ID': instance.peoplePeopleId,
      'HAS_VIEWED': instance.hasViewed,
      'NOTIFICATION_SENT': instance.notificationSent,
      'LEGAL_NAME': instance.legalName,
    };
