// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_loan_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLoanProductsResponse _$GetLoanProductsResponseFromJson(
    Map<String, dynamic> json) {
  return GetLoanProductsResponse(
    status: json['status'] as bool,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetLoanProductsResponseToJson(
        GetLoanProductsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
