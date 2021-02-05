// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    products: (json['products'] as List)
        ?.map((e) =>
            e == null ? null : LoanProduct.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    count: json['count'] as int,
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'status': instance.status,
      'products': instance.products,
      'count': instance.count,
    };
