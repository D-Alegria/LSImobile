import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';

part 'get_investment_product_response.g.dart';

@JsonSerializable()
class GetInvestmentProductsResponse {
  final bool status;
  final String message;
  final List<InvestmentProduct> data;
  final int count;

  GetInvestmentProductsResponse({
    this.message,
    this.count,
    this.status,
    this.data,
  });

  factory GetInvestmentProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetInvestmentProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetInvestmentProductsResponseToJson(this);
}
