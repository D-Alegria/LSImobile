import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/bank/bank_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/account/account.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/initiate_card_transaction/initiate_card_transaction_request.dart';
import 'package:lsi_mobile/core/models/requests/reference_id_request/reference_id_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/save_account/save_account_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/initialize_card_transaction/initialize_card_transaction_response.dart';
import 'package:lsi_mobile/core/models/responses/resolve_account/resolve_account_response.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

import 'bank_repo.dart';

@LazySingleton(as: BankRepo)
class BankRepoImpl implements BankRepo {
  final UserRepo _userRepo;
  final BankRemoteDataSource _bankRemoteDataSource;

  BankRepoImpl(
    this._userRepo,
    this._bankRemoteDataSource,
  );

  @override
  Future<Either<Glitch, List<Account>>> get bankAccounts async {
    return await tryMethod<List<Account>>(
      errorMessage: "Internal System Error Occurred:BARP-BAs",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.getBankAccounts(
              TokenRequest(token: success),
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
  Future<Either<Glitch, List<Card>>> get usersCards async {
    return await tryMethod<List<Card>>(
      errorMessage: "Internal System Error Occurred:BARP-UsCs",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.getUsersCards(
              TokenRequest(token: success),
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
        return result.fold(
          (failure) => left(failure),
          (success) async {
            if (success.data.status) {
              // await _userRepo.saveObject("OTP", success.data.otp.toString());
              await _userRepo.saveObject("TNX", success.data.txnRef);
              return right(unit);
            } else {
              return left(ServerGlitch(message: success.data.message));
            }
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> verifyBvnWithOTP(
      VerifyBVNOtpRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:BARP-VBWO",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.verifyBvnWithOtp(
              VerifyBVNOtpRequest(
                token: success,
                otp: request.otp,
                txn: request.txn,
              ),
            );
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
  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
      ResolveAccountRequest request) async {
    return await tryMethod<ResolveAccountResponse>(
      errorMessage: "Internal System Error Occurred:BARP-RBA",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.resolveBankAccount(
              ResolveAccountRequest(
                bankCode: request.bankCode,
                accountNumber: request.accountNumber,
                token: success,
              ),
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
  Future<Either<Glitch, Unit>> addNewCard(String reference) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:BARP-ANC",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.addNewCard(
              ReferenceIdRequest(token: success, reference: reference),
            );
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
  Future<Either<Glitch, CardTransactionData>> initiateCardTransaction(
      String amount) async {
    return await tryMethod<CardTransactionData>(
      errorMessage: "Internal System Error Occurred:BARP-ICT",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.initiateCardTransaction(
              InitiateCardTransactionRequest(token: success, amount: amount),
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
  Future<Either<Glitch, Unit>> saveBankAccount(
      {String accountNumber, String accountName, String bankId}) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:BARP-SBA",
      function: () async {
        final token = await _userRepo.userToken;
        return token.fold(
          (l) => left(l),
          (success) async {
            final result = await _bankRemoteDataSource.saveBankAccount(
              SaveAccountRequest(
                token: success,
                accountNumber: accountNumber,
                accountName: accountName,
                bankId: bankId,
              ),
            );
            return result.fold(
              (failure) => left(failure),
              (success) => right(unit),
            );
          },
        );
      },
    );
  }
}
