import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';

abstract class InvestmentRepo {

  Future<Either<Glitch, String>> get investmentBalance;

}
