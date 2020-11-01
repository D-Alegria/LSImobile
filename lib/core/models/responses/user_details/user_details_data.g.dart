// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsData _$UserDetailsDataFromJson(Map<String, dynamic> json) {
  return UserDetailsData(
    validations: json['validations'] == null
        ? null
        : Validations.fromJson(json['validations'] as Map<String, dynamic>),
    userData: json['userData'] == null
        ? null
        : UserData.fromJson(json['userData'] as Map<String, dynamic>),
    loanHistory: json['loanHistory'] == null
        ? null
        : LoanHistory.fromJson(json['loanHistory'] as Map<String, dynamic>),
    totalLoans: json['total_loans'] as int,
    totalInvestments: json['total_investments'] as int,
    checklist: json['checklist'],
    dashboard: json['dashboard'] == null
        ? null
        : Dashboard.fromJson(json['dashboard'] as Map<String, dynamic>),
    peopleId: json['people_id'] as String,
    timeline: (json['timeline'] as List)
        ?.map((e) =>
            e == null ? null : Timeline.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserDetailsDataToJson(UserDetailsData instance) =>
    <String, dynamic>{
      'validations': instance.validations,
      'userData': instance.userData,
      'loanHistory': instance.loanHistory,
      'total_loans': instance.totalLoans,
      'total_investments': instance.totalInvestments,
      'checklist': instance.checklist,
      'dashboard': instance.dashboard,
      'people_id': instance.peopleId,
      'timeline': instance.timeline,
    };
