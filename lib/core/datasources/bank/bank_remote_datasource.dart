import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';
import 'package:lsi_mobile/core/models/responses/get_cards/get_cards_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';

abstract class BankRemoteDataSource {
  Future<Either<Glitch, BankAccountResponse>> getBankAccounts(
      TokenRequest request);

  Future<Either<Glitch, GetCardsResponse>> getUsersCards(TokenRequest request);
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
    }
  }
}
