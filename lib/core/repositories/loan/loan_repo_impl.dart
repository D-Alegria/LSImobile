import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/loan/loan_remote_datasource.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/current_loan/data.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';

@LazySingleton(as: LoanRepo)
class LoanRepoImpl implements LoanRepo {
  final UserLocalDataSource _userLocalDataSource;
  final LoanRemoteDataSource _loanRemoteDataSource;

  LoanRepoImpl(
    this._userLocalDataSource,
    this._loanRemoteDataSource,
  );

  @override
  Future<Either<Glitch, List<LoanProduct>>> get loanProducts async {
    try {
      final result = await _loanRemoteDataSource.getLoanProducts();
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in investmentBalance"));
    } on Error catch (e) {
      print(e);
      return left(ServerGlitch(message: "Error Occurred in loan r"));
    }
  }

  @override
  Future<Either<Glitch, CurrentLoanData>> get currentLoans async {
    try {
      final user = await _userLocalDataSource.user;
      final token = user.fold((l) => null, (r) => r.token);
      final result = await _loanRemoteDataSource.getCurrentLoan(
        TokenRequest(token: token),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in investmentBalance"));
    } on Error catch (e) {
      print(e);
      return left(ServerGlitch(message: "Error Occurred in loan r"));
    }
  }
}
