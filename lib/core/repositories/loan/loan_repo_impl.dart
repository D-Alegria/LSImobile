import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/loan/loan_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/dto/schedule/schedule.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/core/models/requests/reference_id_request/reference_id_request.dart';
import 'package:lsi_mobile/core/models/requests/request_id_request/request_id_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/current_loan/data.dart';
import 'package:lsi_mobile/core/models/responses/loan_details/loan_details_response.dart';
import 'package:lsi_mobile/core/models/responses/loan_schedule/loan_schedule_response.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

@LazySingleton(as: LoanRepo)
class LoanRepoImpl implements LoanRepo {
  final UserRepo _userRepo;
  final LoanRemoteDataSource _loanRemoteDataSource;

  LoanRepoImpl(this._userRepo, this._loanRemoteDataSource);

  @override
  Future<Either<Glitch, List<LoanProduct>>> get loanProducts async {
    return await tryMethod<List<LoanProduct>>(
      errorMessage: "Internal System Error Occurred:LRP-LP",
      function: () async {
        final result = await _loanRemoteDataSource.getLoanProducts();
        return result.fold(
          (failure) => left(failure),
          (success) => right(success),
        );
      },
    );
  }

  @override
  Future<Either<Glitch, CurrentLoanData>> get currentLoans async {
    return await tryMethod<CurrentLoanData>(
      errorMessage: "Internal System Error Occurred:LRP-CLs",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _loanRemoteDataSource.getCurrentLoan(
              TokenRequest(token: success),
            );
            return result.fold(
              (failure) => left(failure),
              (success) => right(success),
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> applyForLoan(LoanRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:LRP-AFL",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            var tokenRequest = request.copyWith.profile(token: success);
            final result =
                await _loanRemoteDataSource.applyForLoan(tokenRequest);
            return result.fold(
              (failure) => left(failure),
              (success) => right(unit),
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, LoanDetailsData>> getLoanDetails(
    String requestId,
  ) async {
    return await tryMethod<LoanDetailsData>(
      errorMessage: "Internal System Error Occurred:LRP-GLDs",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _loanRemoteDataSource.getLoanDetails(
              RequestIdRequest(token: success, requestId: requestId),
            );
            return result.fold(
              (failure) => left(failure),
              (success) => right(success.data),
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, List<Schedule>>> getLoanSchedule(
    String requestId,
  ) async {
    return await tryMethod<List<Schedule>>(
      errorMessage: "Internal System Error Occurred:LRP-GLSs",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _loanRemoteDataSource.getLoanSchedule(
              RequestIdRequest(token: success, requestId: requestId),
            );
            return result.fold(
              (failure) => left(failure),
              (success) => right(success.data),
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, LoanScheduleResponse>> makeLoanPayment(
      String reference) async {
    return await tryMethod<LoanScheduleResponse>(
      errorMessage: "Internal System Error Occurred:LRP-GLSs",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _loanRemoteDataSource.makeLoanPayment(
              ReferenceIdRequest(token: success, reference: reference),
            );
            return result.fold(
              (failure) => left(failure),
              (success) => right(success),
            );
          },
        );
      },
    );
  }
}
