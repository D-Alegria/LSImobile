// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoanHistory _$LoanHistoryFromJson(Map<String, dynamic> json) {
  return LoanHistory(
    result: json['result'] as List,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$LoanHistoryToJson(LoanHistory instance) =>
    <String, dynamic>{
      'result': instance.result,
      'size': instance.size,
    };
