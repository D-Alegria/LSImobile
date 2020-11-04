import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/responses/current_loan/data.dart';

abstract class LoanRepo {
  Future<Either<Glitch, List<LoanProduct>>> get loanProducts;

  Future<Either<Glitch, CurrentLoanData>> get currentLoans;
}
