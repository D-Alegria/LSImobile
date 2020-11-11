import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/bank/bank_remote_datasource.dart';
import 'package:lsi_mobile/core/datasources/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';
import 'package:lsi_mobile/core/models/responses/resolve_account/resolve_account_response.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

import 'bank_repo.dart';

@LazySingleton(as: BankRepo)
class BankRepoImpl implements BankRepo {
  final UserRepo _userRepo;
  final BankRemoteDataSource _bankRemoteDataSource;
  final LocalStorageRepo _localStorageRepo;

  BankRepoImpl(
    this._userRepo,
    this._bankRemoteDataSource,
    this._localStorageRepo,
  );

  @override
  Future<Either<Glitch, BankAccountResponse>> get bankAccounts async {
    return await tryMethod<BankAccountResponse>(
        errorMessage: "Internal System Error Occurred:BARP-BAs",
        function: () async {
          final user = await _userRepo.user;
          final token = user.token;
          final result = await _bankRemoteDataSource.getBankAccounts(
            TokenRequest(token: token),
          );
          return result.fold((failure) {
            return left(ServerGlitch(message: failure.message));
          }, (success) {
            return right(success);
          });
        });
  }

  @override
  Future<Either<Glitch, List<Card>>> get usersCards async {
    return await tryMethod<List<Card>>(
        errorMessage: "Internal System Error Occurred:BARP-UsCs",
        function: () async {
          final user = await _userRepo.user;
          final token = user.token;
          final result = await _bankRemoteDataSource.getUsersCards(
            TokenRequest(token: token),
          );
          return result.fold((failure) {
            return left(ServerGlitch(message: failure.message));
          }, (success) {
            return right(success.data);
          });
        });
  }

  @override
  Future<Either<Glitch, Unit>> initiateBvnValidation(
      InitiateBVNValidationRequest request) async {
    return await tryMethod<Unit>(
        errorMessage: "Internal System Error Occurred:BARP-IBV",
        function: () async {
          final result = await _bankRemoteDataSource.initiateBvnValidation(
            InitiateBVNValidationRequest(
              bvn: request.bvn,
              firstName: request.firstName,
              lastName: request.lastName,
            ),
          );
          return result.fold((failure) {
            return left(ServerGlitch(message: failure.message));
          }, (success) async {
            if (success.data.status) {
              await _localStorageRepo.saveString(
                  "OTP", success.data.otp.toString());
              await _localStorageRepo.saveString("TNX", success.data.txnRef);
              return right(unit);
            } else {
              return left(ServerGlitch(message: success.data.message));
            }
          });
        });
  }

  @override
  Future<Either<Glitch, Unit>> verifyBvnWithOTP(
      VerifyBVNOtpRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:BARP-VBWO",
      function: () async {
        final user = await _userRepo.user;
        final result = await _bankRemoteDataSource.verifyBvnWithOtp(
          VerifyBVNOtpRequest(
            token: user.token,
            otp: request.otp,
            txn: request.txn,
          ),
        );
        return result.fold(
          (failure) => left(ServerGlitch(message: failure.message)),
          (success) => right(unit),
        );
      },
    );
  }

  @override
  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
      ResolveAccountRequest request) async {
    return await tryMethod<ResolveAccountResponse>(
        errorMessage: "Internal System Error Occurred:BARP-RBA",
        function: () async {
          final user = await _userRepo.user;
          final token = user.token;
          final result = await _bankRemoteDataSource.resolveBankAccount(
            ResolveAccountRequest(
              bankCode: request.bankCode,
              accountNumber: request.accountNumber,
              token: token,
            ),
          );
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(success),
          );
        });
  }
}
