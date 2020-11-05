// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_investment_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInvestmentProductsResponse _$GetInvestmentProductsResponseFromJson(
    Map<String, dynamic> json) {
  return GetInvestmentProductsResponse(
    count: json['count'] as int,
    status: json['status'] as bool,
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : InvestmentProduct.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetInvestmentProductsResponseToJson(
        GetInvestmentProductsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'count': instance.count,
    };
