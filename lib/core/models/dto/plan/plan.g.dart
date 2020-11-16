// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return Plan(
    productId: json['product_id'] as String,
    amount: json['amount'] as String,
    duration: json['duration'] as String,
  );
}

Map<String, dynamic> _$PlanToJson(Plan instance) => <String, dynamic>{
      'product_id': instance.productId,
      'duration': instance.duration,
      'amount': instance.amount,
    };
