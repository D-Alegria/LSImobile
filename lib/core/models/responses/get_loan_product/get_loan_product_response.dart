import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_loan_product_response.g.dart';

@JsonSerializable()
class GetLoanProductsResponse {
  final bool status;
  final Data data;

  GetLoanProductsResponse({
    this.status,
    this.data,
  });

  factory GetLoanProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetLoanProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetLoanProductsResponseToJson(this);
}
