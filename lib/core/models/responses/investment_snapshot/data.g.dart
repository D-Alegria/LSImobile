// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentSnapshotData _$InvestmentSnapshotDataFromJson(
    Map<String, dynamic> json) {
  return InvestmentSnapshotData(
    today: json['today'] as String,
    savings: json['savings'] as String,
    investments: json['investments'] as String,
    investmentBalance: json['investment_balance'] as String,
  );
}

Map<String, dynamic> _$InvestmentSnapshotDataToJson(
        InvestmentSnapshotData instance) =>
    <String, dynamic>{
      'today': instance.today,
      'savings': instance.savings,
      'investments': instance.investments,
      'investment_balance': instance.investmentBalance,
    };
