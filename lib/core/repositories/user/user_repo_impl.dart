import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final UserLocalDataSource _userLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepoImpl(this._userLocalDataSource, this._userRemoteDataSource);

  @override
  Future<Either<Glitch, UserDetailsData>> get userDataRemote async {
    try {
      final user = await _userLocalDataSource.user;
      final token = user.fold((l) => null, (r) => r.token);
      final result = await _userRemoteDataSource.getUserDetails(
        TokenRequest(token: token),
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in repo"));
    }
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDataLocal(User user) async {
    try {
      final result = await _userLocalDataSource.saveUser(user: user);
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user repo"));
    }
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
    String token,
  }) async {
    try {
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
      );
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(unit);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user repo"));
    }
  }

  @override
  Future<Either<Glitch, Unit>> get clearUserData async {
    try {
      final result = await _userLocalDataSource.deleteUser();
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(success);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user repo"));
    }
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDataRemote(
      UserDetailsRequest request) async {
    try {
      final storedUser = await user;
      print(storedUser.token);
      var requestWithToken = request.copyWith(token: storedUser.token);
      final result =
          await _userRemoteDataSource.saveUserDetails(requestWithToken);
      return result.fold((failure) {
        return left(ServerGlitch(message: failure.message));
      }, (success) {
        return right(unit);
      });
    } on Exception catch (e) {
      print(e);
      return left(ServerGlitch(message: "Happened in user repo"));
    }
  }
}
