import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/investment/investment_remote_datasource.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/investment_product/investment_product.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';

import 'investment_repo.dart';

@LazySingleton(as: InvestmentRepo)
class InvestmentRepoImpl implements InvestmentRepo {
  final UserLocalDataSource _userLocalDataSource;
  final InvestmentRemoteDataSource _investmentRemoteDataSource;

  InvestmentRepoImpl(
    this._userLocalDataSource,
    this._investmentRemoteDataSource,
  );

  @override
  Future<Either<Glitch, String>> get investmentBalance async {
    try {
      final user = await _userLocalDataSource.user;
      final token = user.fold((l) => null, (r) => r.token);
      final result = await _investmentRemoteDataSource.getInvestmentPortfolio(
        TokenRequest(token: token),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success.investmentBalance.toString());
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in investmentBalance"));
    } on Error catch (e) {
      print(e);
      return left(
          ServerGlitch(message: "Opps an error get investment Balance"));
    }
  }

  @override
  Future<Either<Glitch, List<InvestmentProduct>>> get investmentProducts async {
    try {
      final user = await _userLocalDataSource.user;
      final token = user.fold((l) => null, (r) => r.token);
      final result = await _investmentRemoteDataSource.getInvestmentProducts(
        TokenRequest(token: token),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in get Investment products"));
    } on Error catch (e) {
      print(e);
      return left(
          ServerGlitch(message: "Opps an error get Investment products"));
    }
  }
}
