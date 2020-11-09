// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_snapshot_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentSnapshotResponse _$InvestmentSnapshotResponseFromJson(
    Map<String, dynamic> json) {
  return InvestmentSnapshotResponse(
    data: json['data'] == null
        ? null
        : InvestmentSnapshotData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InvestmentSnapshotResponseToJson(
        InvestmentSnapshotResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
