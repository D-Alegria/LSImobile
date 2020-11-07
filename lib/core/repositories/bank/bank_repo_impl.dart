import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/bank/bank_remote_datasource.dart';
import 'package:lsi_mobile/core/datasources/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/card/card.dart';
import 'package:lsi_mobile/core/models/requests/initiate_bvn_validation/initiate_bvn_validation_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_bvn_otp/verify_bvn_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/bank_account/bank_account_response.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';

import 'bank_repo.dart';

@LazySingleton(as: BankRepo)
class BankRepoImpl implements BankRepo {
  final UserRepo _userRepo;
  final BankRemoteDataSource _bankRemoteDataSource;
  final LocalStorageRepo _localStorageRepo;

  BankRepoImpl(
    this._userRepo,
    this._bankRemoteDataSource,
    this._localStorageRepo,
  );

  @override
  Future<Either<Glitch, BankAccountResponse>> get bankAccounts async {
    try {
      final user = await _userRepo.user;
      final token = user.token;
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
    } on Error catch (e) {
      print(e);
      return left(
          ServerGlitch(message: "Error occurred while getting bank accounts"));
    }
  }

  @override
  Future<Either<Glitch, List<Card>>> get usersCards async {
    try {
      final user = await _userRepo.user;
      final token = user.token;
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
      return left(ServerGlitch(message: "Happened in user cards"));
    } on Error catch (e) {
      print(e);
      return left(
          ServerGlitch(message: "Error occurred while getting user cards"));
    }
  }

  @override
  Future<Either<Glitch, Unit>> initiateBvnValidation(
      InitiateBVNValidationRequest request) async {
    try {
      final user = await _userRepo.user;
      final token = user.token;
      final result = await _bankRemoteDataSource.initiateBvnValidation(
        InitiateBVNValidationRequest(
          token: token,
          bvn: request.bvn,
          firstName: request.firstName,
          lastName: request.lastName,
        ),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) async {
        if (success.data.status) {
          await _localStorageRepo.saveString(
              "OTP", success.data.otp.toString());
          await _localStorageRepo.saveString("TNX", success.data.txnRef);
          await _userRepo.updateUserDataLocal(bvn: request.bvn);
          return right(unit);
        } else {
          return left(ServerGlitch(message: success.data.message));
        }
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user cards"));
    } on Error catch (e) {
      print(e);
      return left(
          ServerGlitch(message: "Error occurred while initiating bvn val"));
    }
  }

  @override
  Future<Either<Glitch, Unit>> verifyBvnWithOTP(
      VerifyBVNOtpRequest request) async {
    try {
      final result = await _bankRemoteDataSource.verifyBvnWithOtp(request);
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) async {
        await _userRepo.updateUserDataLocal(isBvnVerified: true);
        return right(unit);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user cards"));
    } on Error catch (e) {
      print(e);
      return left(ServerGlitch(message: "Error occurred while verify bvn val"));
    }
  }

  @override
  Future<Either<Glitch, String>> resolveBankAccount(
      ResolveAccountRequest request) async {
    try {
      final user = await _userRepo.user;
      final token = user.token;
      final result =
          await _bankRemoteDataSource.resolveBankAccount(ResolveAccountRequest(
        bankCode: request.bankCode,
        accountNumber: request.accountNumber,
        token: token,
      ));
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) async {
        return right(success.data.accountName);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user cards"));
    } on Error catch (e) {
      print(e);
      return left(
          ServerGlitch(message: "Error occurred while resolve bank acc"));
    }
  }
}
