import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/get_investment_product/get_investment_product_response.dart';
import 'package:lsi_mobile/core/models/responses/investment_portfolio/data.dart';
import 'package:lsi_mobile/core/models/responses/investment_portfolio/investment_portfolio_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

abstract class InvestmentRemoteDataSource {
  Future<Either<Glitch, InvestmentPortfolioData>> getInvestmentPortfolio(
    TokenRequest request,
  );

  Future<Either<Glitch, List<InvestmentProduct>>> getInvestmentProducts(
    TokenRequest request,
  );
}

@LazySingleton(as: InvestmentRemoteDataSource)
class InvestmentRemoteDataSourceImpl implements InvestmentRemoteDataSource {
  final ApiManager _apiManager;

  InvestmentRemoteDataSourceImpl(this._apiManager);

  @override
  Future<Either<Glitch, InvestmentPortfolioData>> getInvestmentPortfolio(
      TokenRequest request) async {
    return await tryMethod<InvestmentPortfolioData>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.investmentSnapshot,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(RemoteGlitch(message: failure.message)),
          (success) {
            final result = InvestmentPortfolioResponse.fromJson(success);
            return right(result.data);
          },
        );
      },
      errorMessage: "Internal System Error Occurred:INRD-GIPO",
    );
  }

  @override
  Future<Either<Glitch, List<InvestmentProduct>>> getInvestmentProducts(
      TokenRequest request) async {
    return await tryMethod<List<InvestmentProduct>>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.investmentProducts,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(RemoteGlitch(message: failure.message)),
          (success) {
            final result = GetInvestmentProductsResponse.fromJson(success);
            return right(result.data);
          },
        );
      },
      errorMessage: "Internal System Error Occurred:INRD-GIPR",
    );
  }
}
