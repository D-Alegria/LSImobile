import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/recent_transaction/recent_transaction.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final UserLocalDataSource _userLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepoImpl(this._userLocalDataSource, this._userRemoteDataSource);

  @override
  Future<Either<Glitch, UserDetailsData>> get userDataRemote async {
    return await tryMethod<UserDetailsData>(
        errorMessage: "Internal System Error Occurred:URP-UDR",
        function: () async {
          final user = await _userLocalDataSource.user;
          final token = user.fold((l) => null, (r) => r.token);
          final result = await _userRemoteDataSource.getUserDetails(
            TokenRequest(token: token),
          );
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(success),
          );
        });
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDataLocal(User user) async {
    return await tryMethod<Unit>(
        errorMessage: "Internal System Error Occurred:URP-SUDL",
        function: () async {
          final result = await _userLocalDataSource.saveUser(user: user);
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(success),
          );
        });
  }

  @override
  Future<User> get user async {
    final result = await _userLocalDataSource.user;
    return result.fold((l) => null, (r) => r);
  }

  @override
  Future<Either<Glitch, Unit>> updateUserDataLocal({
    String id,
    String fullName,
    String phoneNumber,
    String email,
    String profilePicture,
    String password,
    bool isAuthenticated,
    bool isVerified,
    bool isEduAndEmpInfoFilled,
    bool isEmergenceContactFilled,
    bool isPersonalInfoFilled,
    bool isResidenceFilled,
    bool isBvnVerified,
    String token,
    String bvn,
  }) async {
    return await tryMethod<Unit>(
        errorMessage: "Internal System Error Occurred:URP-UUDL",
        function: () async {
          final result = await _userLocalDataSource.updateUser(
            token: token,
            profilePicture: profilePicture,
            phoneNumber: phoneNumber,
            password: password,
            isVerified: isVerified,
            isAuthenticated: isAuthenticated,
            id: id,
            email: email,
            fullName: fullName,
            isEduAndEmpInfoFilled: isEduAndEmpInfoFilled,
            isEmergenceContactFilled: isEmergenceContactFilled,
            isPersonalInfoFilled: isPersonalInfoFilled,
            isBvnVerified: isBvnVerified,
            isResidenceFilled: isResidenceFilled,
            bvn: bvn,
          );
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(unit),
          );
        });
  }

  @override
  Future<Either<Glitch, Unit>> get clearUserData async {
    return await tryMethod<Unit>(
        errorMessage: "Internal System Error Occurred:URP-CUD",
        function: () async {
          final result = await _userLocalDataSource.deleteUser();
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(success),
          );
        });
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDataRemote(
      UserDetailsRequest request) async {
    return await tryMethod<Unit>(
        errorMessage: "Internal System Error Occurred:URP-SUDR",
        function: () async {
          final storedUser = await user;
          var requestWithToken = request.copyWith(token: storedUser.token);
          final result =
              await _userRemoteDataSource.saveUserDetails(requestWithToken);
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(unit),
          );
        });
  }

  @override
  Future<Either<Glitch, List<RecentTransaction>>> get recentTransactions async {
    return await tryMethod<List<RecentTransaction>>(
        errorMessage: "Internal System Error Occurred:URP-RT",
        function: () async {
          final user = await _userLocalDataSource.user;
          final token = user.fold((l) => null, (r) => r.token);
          final result = await _userRemoteDataSource.getRecentTransactions(
            TokenRequest(token: token),
          );
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(success),
          );
        });
  }
}
