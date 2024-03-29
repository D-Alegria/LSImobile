import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/initiate_card_transaction/initiate_card_transaction_request.dart';
import 'package:lsi_mobile/core/models/requests/reference_id_request/reference_id_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/save_account/save_account_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';
import 'package:lsi_mobile/core/models/responses/get_cards/get_cards_response.dart';
import 'package:lsi_mobile/core/models/responses/initialize_card_transaction/initialize_card_transaction_response.dart';
import 'package:lsi_mobile/core/models/responses/initiate_bvn_validation/initiate_bvn_validation_response.dart';
import 'package:lsi_mobile/core/models/responses/resolve_account/resolve_account_response.dart';
import 'package:lsi_mobile/core/models/responses/response/response.dart';
import 'package:lsi_mobile/core/models/responses/verify_bvn_otp/verify_bvn_otp_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

abstract class BankRemoteDataSource {
  Future<Either<Glitch, BankAccountResponse>> getBankAccounts(
    TokenRequest request,
  );

  Future<Either<Glitch, GetCardsResponse>> getUsersCards(TokenRequest request);

  Future<Either<Glitch, InitiateBVNValidationResponse>> initiateBvnValidation(
    InitiateBVNValidationRequest request,
  );

  Future<Either<Glitch, VerifyBVNOtpResponse>> verifyBvnWithOtp(
    VerifyBVNOtpRequest request,
  );

  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
    ResolveAccountRequest request,
  );

  Future<Either<Glitch, Response>> saveBankAccount(
    SaveAccountRequest request,
  );

  Future<Either<Glitch, InitializeCardTransactionResponse>>
      initiateCardTransaction(
    InitiateCardTransactionRequest request,
  );

  Future<Either<Glitch, Response>> addNewCard(
    ReferenceIdRequest request,
  );
}

@LazySingleton(as: BankRemoteDataSource)
class BankRemoteDataSourceImpl implements BankRemoteDataSource {
  final ApiManager _apiManager;

  BankRemoteDataSourceImpl(this._apiManager);

  @override
  Future<Either<Glitch, BankAccountResponse>> getBankAccounts(
      TokenRequest request) async {
    return await tryMethod<BankAccountResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.bankAccounts,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = BankAccountResponse.fromJson(success);
            return right(result);
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-GBA",
    );
  }

  @override
  Future<Either<Glitch, GetCardsResponse>> getUsersCards(
      TokenRequest request) async {
    return await tryMethod<GetCardsResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.cards,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = GetCardsResponse.fromJson(success);
            return right(result);
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-GUC",
    );
  }

  @override
  Future<Either<Glitch, InitiateBVNValidationResponse>> initiateBvnValidation(
      InitiateBVNValidationRequest request) async {
    return await tryMethod<InitiateBVNValidationResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.initiateCustomerBVNValidation,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) {
            return left(failure);
          },
          (success) {
            final result = InitiateBVNValidationResponse.fromJson(success);
            if (result.status)
              return right(result);
            else
              return left(SystemGlitch(message: result.data.message));
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-IBV",
    );
  }

  @override
  Future<Either<Glitch, VerifyBVNOtpResponse>> verifyBvnWithOtp(
      VerifyBVNOtpRequest request) async {
    return await tryMethod<VerifyBVNOtpResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.validateCustomerBVNUsingOTP,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = VerifyBVNOtpResponse.fromJson(success);
            if (result.status)
              return right(result);
            else
              return left(SystemGlitch(message: result.message));
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-VBWO",
    );
  }

  @override
  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
      ResolveAccountRequest request) async {
    return await tryMethod<ResolveAccountResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.resolveBankAccount,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = ResolveAccountResponse.fromJson(success);
            if (result.status == "success")
              return right(result);
            else
              return left(SystemGlitch(message: result.message));
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-RBA",
    );
  }

  @override
  Future<Either<Glitch, Response>> saveBankAccount(
      SaveAccountRequest request) async {
    return await tryMethod<Response>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.saveBankAccount,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = Response.fromJson(success);
            if (result.status)
              return right(result);
            else
              return left(SystemGlitch(message: result.message));
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-SBA",
    );
  }

  @override
  Future<Either<Glitch, InitializeCardTransactionResponse>>
      initiateCardTransaction(InitiateCardTransactionRequest request) async {
    return await tryMethod<InitializeCardTransactionResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.initializeTransaction,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = InitializeCardTransactionResponse.fromJson(success);
            if (result.status)
              return right(result);
            else
              return left(SystemGlitch(message: result.message));
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-ICT",
    );
  }

  @override
  Future<Either<Glitch, Response>> addNewCard(
      ReferenceIdRequest request) async {
    return await tryMethod<Response>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.addNewCard,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) {
            final result = Response.fromJson(success);
            if (result.status)
              return right(result);
            else
              return left(SystemGlitch(message: result.message));
          },
        );
      },
      errorMessage: "Internal System Error Occurred:BARD-ANC",
    );
  }
}
