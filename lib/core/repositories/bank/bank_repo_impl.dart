import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/bank/bank_remote_datasource.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';

import 'bank_repo.dart';

@LazySingleton(as: BankRepo)
class BankRepoImpl implements BankRepo {
  final UserLocalDataSource _userLocalDataSource;
  final BankRemoteDataSource _bankRemoteDataSource;

  BankRepoImpl(
    this._userLocalDataSource,
    this._bankRemoteDataSource,
  );

  @override
  Future<Either<Glitch, BankAccountResponse>> get bankAccounts async {
    try {
      final user = await _userLocalDataSource.user;
      final token = user.fold((l) => null, (r) => r.token);
      final result = await _bankRemoteDataSource.getBankAccounts(
        TokenRequest(token: token),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in bankAccounts"));
    }
  }

  @override
  Future<Either<Glitch, List<Card>>> get usersCards async {
    try {
      final user = await _userLocalDataSource.user;
      final token = user.fold((l) => null, (r) => r.token);
      final result = await _bankRemoteDataSource.getUsersCards(
        TokenRequest(token: token),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success.data);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in bankAccounts"));
    }
  }
}
