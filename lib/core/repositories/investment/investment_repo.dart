import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/investment/investment.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/core/models/requests/create_investment/create_investment_request.dart';
import 'package:lsi_mobile/core/models/requests/liquidate_investment/liquidate_investment_request.dart';
import 'package:lsi_mobile/core/models/requests/rollover_investment/rollover_investment_request.dart';
import 'package:lsi_mobile/core/models/requests/terminate_investment/terminate_investment_request.dart';

abstract class InvestmentRepo {
  Future<Either<Glitch, String>> get investmentBalance;

  Future<Either<Glitch, List<InvestmentProduct>>> get investmentProducts;

  Future<Either<Glitch, List<Investment>>> get activeInvestments;

  Future<Either<Glitch, List<Investment>>> get allInvestments;

  Future<Either<Glitch, Unit>> createInvestment(
    CreateInvestmentRequest request,
  );

  Future<Either<Glitch, Unit>> liquidateInvestment(
    LiquidatePayLoad payLoad,
  );

  Future<Either<Glitch, Unit>> rollOverInvestment(
    RollOverPayLoad payLoad,
  );

  Future<Either<Glitch, Unit>> terminateInvestment(
    TerminatePayLoad payLoad,
  );
}
