import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/current_loan/current_loan_response.dart';
import 'package:lsi_mobile/core/models/responses/current_loan/data.dart';
import 'package:lsi_mobile/core/models/responses/get_loan_product/get_loan_product_response.dart';
import 'package:lsi_mobile/core/models/responses/loan_application/loan_application_response.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

abstract class LoanRemoteDataSource {
  Future<Either<Glitch, List<LoanProduct>>> getLoanProducts();

  Future<Either<Glitch, CurrentLoanData>> getCurrentLoan(TokenRequest request);

  Future<Either<Glitch, LoanApplicationResponse>> applyForLoan(
    LoanRequest request,
  );
}

@LazySingleton(as: LoanRemoteDataSource)
class LoanRemoteDataSourceImpl implements LoanRemoteDataSource {
  final ApiManager _apiManager;

  LoanRemoteDataSourceImpl(this._apiManager);

  @override
  Future<Either<Glitch, List<LoanProduct>>> getLoanProducts() async {
    return await tryMethod<List<LoanProduct>>(
      function: () async {
        final response = await _apiManager.get(
          url: ApiUrls.loanProducts,
        );
        return response.fold(
          (failure) => left(RemoteGlitch(message: failure.message)),
          (success) {
            final result = GetLoanProductsResponse.fromJson(success);
            if (!result.data.status)
              return left(
                  RemoteGlitch(message: 'Error getting Loans Products'));
            return right(result.data.products);
          },
        );
      },
      errorMessage: "Internal System Error Occurred:LRD-GLPR",
    );
  }

  @override
  Future<Either<Glitch, CurrentLoanData>> getCurrentLoan(
      TokenRequest request) async {
    return await tryMethod<CurrentLoanData>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.currentLoan,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(RemoteGlitch(message: failure.message)),
          (success) {
            final result = CurrentLoanResponse.fromJson(success);
            if (result.status) {
              return right(result.data);
            } else {
              return left(RemoteGlitch(message: result.message));
            }
          },
        );
      },
      errorMessage: "Internal System Error Occurred:LRD-GCL",
    );
  }

  @override
  Future<Either<Glitch, LoanApplicationResponse>> applyForLoan(
      LoanRequest request) async {
    return await tryMethod<LoanApplicationResponse>(
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.applyForLoan,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(RemoteGlitch(message: failure.message)),
          (success) {
            final result = LoanApplicationResponse.fromJson(success);
            if (result.status) {
              return right(result);
            } else {
              return left(RemoteGlitch(message: result.message));
            }
          },
        );
      },
      errorMessage: "Internal System Error Occurred:LRD-AFL",
    );
  }
}
