import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';

abstract class InvestmentRepo {
  Future<Either<Glitch, String>> get investmentBalance;

  Future<Either<Glitch, List<InvestmentProduct>>> get investmentProducts;

  Future<Either<Glitch, List>> get investments;
}
