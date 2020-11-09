import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/dto/schedule/schedule.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/core/models/responses/current_loan/data.dart';
import 'package:lsi_mobile/core/models/responses/loan_details/loan_details_response.dart';

abstract class LoanRepo {
  Future<Either<Glitch, List<LoanProduct>>> get loanProducts;

  Future<Either<Glitch, CurrentLoanData>> get currentLoans;

  Future<Either<Glitch, Unit>> applyForLoan(LoanRequest request);

  Future<Either<Glitch, LoanDetailsData>> getLoanDetails(String requestId);

  Future<Either<Glitch, List<Schedule>>> getLoanSchedule(String requestId);
}
