import 'package:json_annotation/json_annotation.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final bool status;
  final List<LoanProduct> products;
  final int count;

  Data({
    this.products,
    this.count,
    this.status,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
