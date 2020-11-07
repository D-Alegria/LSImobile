import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';
import 'package:lsi_mobile/core/models/responses/get_cards/get_cards_response.dart';
import 'package:lsi_mobile/core/models/responses/initiate_bvn_validation/initiate_bvn_validation_response.dart';
import 'package:lsi_mobile/core/models/responses/resolve_account/resolve_account_response.dart';
import 'package:lsi_mobile/core/models/responses/verify_bvn_otp/verify_bvn_otp_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';

abstract class BankRemoteDataSource {
  Future<Either<Glitch, BankAccountResponse>> getBankAccounts(
      TokenRequest request);

  Future<Either<Glitch, GetCardsResponse>> getUsersCards(TokenRequest request);

  Future<Either<Glitch, InitiateBVNValidationResponse>> initiateBvnValidation(
      InitiateBVNValidationRequest request);

  Future<Either<Glitch, VerifyBVNOtpResponse>> verifyBvnWithOtp(
      VerifyBVNOtpRequest request);

  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
      ResolveAccountRequest request);
}

@LazySingleton(as: BankRemoteDataSource)
class BankRemoteDataSourceImpl implements BankRemoteDataSource {
  final ApiManager _apiManager;

  BankRemoteDataSourceImpl(this._apiManager);

  @override
  Future<Either<Glitch, BankAccountResponse>> getBankAccounts(
      TokenRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.bankAccounts,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          final result = BankAccountResponse.fromJson(success);
          return right(result);
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    } on Error catch (e) {
      print(e);
      return left(RemoteGlitch(message: "Opps an error get bank accounts"));
    }
  }

  @override
  Future<Either<Glitch, GetCardsResponse>> getUsersCards(
      TokenRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.cards,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          final result = GetCardsResponse.fromJson(success);
          return right(result);
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    } on Error catch (e) {
      print(e);
      return left(RemoteGlitch(message: "Opps an error get bank cards"));
    }
  }

  @override
  Future<Either<Glitch, InitiateBVNValidationResponse>> initiateBvnValidation(
      InitiateBVNValidationRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.initiateCustomerBVNValidation,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(RemoteGlitch(message: failure.message));
        },
        (success) {
          final result = InitiateBVNValidationResponse.fromJson(success);
          if (result.status) {
            return right(result);
          } else {
            return left(RemoteGlitch(message: result.data.message));
          }
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    } on Error catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "Opps an error during initiating bvn validation"),
      );
    }
  }

  @override
  Future<Either<Glitch, VerifyBVNOtpResponse>> verifyBvnWithOtp(
      VerifyBVNOtpRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.validateCustomerBVNUsingOTP,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          final result = VerifyBVNOtpResponse.fromJson(success);
          if (result.status) {
            return right(result);
          } else {
            return left(RemoteGlitch(message: result.message));
          }
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    } on Error catch (e) {
      print(e);
      return left(
          RemoteGlitch(message: "Opps an error during verify bvn with otp"));
    }
  }

  @override
  Future<Either<Glitch, ResolveAccountResponse>> resolveBankAccount(
      ResolveAccountRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.resolveBankAccount,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => left(RemoteGlitch(message: failure.message)),
        (success) {
          final result = ResolveAccountResponse.fromJson(success);
          if (result.status == "success") {
            return right(result);
          } else {
            return left(RemoteGlitch(message: result.message));
          }
        },
      );
    } on Exception catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "System Error Occurred please contact developer"),
      );
    } on Error catch (e) {
      print(e);
      return left(
        RemoteGlitch(message: "Opps an error during resolve account"),
      );
    }
  }
}
