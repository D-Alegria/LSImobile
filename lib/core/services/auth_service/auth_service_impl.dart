import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/auth_glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/constants/local_storage_keys.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/models/responses/login_user/login_user_response.dart';
import 'package:lsi_mobile/core/models/responses/register_user/register_user_response.dart';
import 'package:lsi_mobile/core/repositories/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';
import 'package:lsi_mobile/core/utils/network_util.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final LocalStorageRepo _localStorageRepo;
  final ApiManager _apiManager;
  final NetworkInfo _networkInfo;

  AuthServiceImpl(this._apiManager, this._networkInfo, this._localStorageRepo);

  @override
  // TODO: implement currentUser
  Future<bool> get currentUser => throw UnimplementedError();

  @override
  Future<Either<AuthGlitch, Unit>> login(LoginUserRequest request) async {
    if (await _networkInfo.isConnected) {
      final response = await _apiManager.post(
        url: ApiUrls.login,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          print(failure.toString());
          return left(AuthNetworkGlitch(message: "failure"));
        },
        (success) async {
          final result = LoginUserResponse.fromJson(success);
          await _localStorageRepo.saveString("USER_TOKEN", result.token);
          return right(unit);
        },
      );
    } else {
      return left(AuthNetworkGlitch(message: "No network Connection found"));
    }
  }

  @override
  Future<Either<AuthGlitch, Unit>> register(RegisterUserRequest request) async {
    print(await _networkInfo.isConnected);
    if (await _networkInfo.isConnected) {
      final response = await _apiManager.post(
        url: ApiUrls.register,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          print(failure.toString());
          return left(AuthNetworkGlitch(message: "failure"));
        },
        (success) async {
          final result = RegisterUserResponse.fromJson(success);
          await _localStorageRepo.saveString(
              LocalStorageKeys.userToken, result.token);
          await _localStorageRepo.saveString(
              LocalStorageKeys.userId, result.userId);
          return right(unit);
        },
      );
    } else {
      return left(AuthNetworkGlitch(message: "No network Connection found"));
    }
  }
}
