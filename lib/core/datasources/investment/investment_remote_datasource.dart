import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/investment_portfolio/data.dart';
import 'package:lsi_mobile/core/models/responses/investment_portfolio/investment_portfolio_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';

abstract class InvestmentRemoteDataSource {
  Future<Either<Glitch, InvestmentPortfolioData>> getInvestmentPortfolio(
      TokenRequest request);
}

@LazySingleton(as: InvestmentRemoteDataSource)
class InvestmentRemoteDataSourceImpl implements InvestmentRemoteDataSource {
  final ApiManager _apiManager;

  InvestmentRemoteDataSourceImpl(this._apiManager);

  @override
  Future<Either<Glitch, InvestmentPortfolioData>> getInvestmentPortfolio(
      TokenRequest request) async {
    try {
      final response = await _apiManager.post(
        url: ApiUrls.investmentSnapshot,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) => null,
        (success) {
          final result = InvestmentPortfolioResponse.fromJson(success);
          return right(result.data);
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
