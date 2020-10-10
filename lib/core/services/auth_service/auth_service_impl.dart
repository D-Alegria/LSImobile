import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/auth_glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/dto/user.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/models/requests/send_otp/send_otp_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_otp/verify_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/login_user/login_user_response.dart';
import 'package:lsi_mobile/core/models/responses/register_user/register_user_response.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';
import 'package:lsi_mobile/core/utils/network_util.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final ApiManager _apiManager;
  final NetworkInfo _networkInfo;
  final UserRepo _userRepo;

  AuthServiceImpl(this._apiManager, this._networkInfo, this._userRepo);

  @override
  Future<User> get currentUser async => await _userRepo.user;

  @override
  Future<Either<AuthGlitch, Unit>> login(LoginUserRequest request) async {
    if (await _networkInfo.isConnected) {
      final response = await _apiManager.post(
        url: ApiUrls.login,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(AuthNetworkGlitch(message: failure.message));
        },
        (success) async {
          final result = LoginUserResponse.fromJson(success);
          await _userRepo.saveUser(
            id: result.userId,
            email: result.data.email,
            fullName: result.data.fullName,
            isAuthenticated: true,
            password: request.password,
            token: result.token,
            profilePicture: result.data.profilePicture,
          );
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
          return left(AuthNetworkGlitch(message: failure.message));
        },
        (success) async {
          final result = RegisterUserResponse.fromJson(success);
          await _userRepo.saveUser(
            id: result.userId,
            email: request.profile.email,
            fullName: request.profile.fullName,
            phoneNumber: request.profile.phone,
            isAuthenticated: true,
            password: request.profile.password,
            token: result.token,
          );
          return right(unit);
        },
      );
    } else {
      return left(AuthNetworkGlitch(message: "No network Connection found"));
    }
  }

  @override
  Future<Either<AuthGlitch, Unit>> sendOTP(SendOTPRequest request) async {
    if (await _networkInfo.isConnected) {
      final response = await _apiManager.post(
        url: ApiUrls.validatePhoneNumber,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(AuthNetworkGlitch(message: failure.message));
        },
        (success) async {
          SendOTPRequest.fromJson(success);
          return right(unit);
        },
      );
    } else {
      return left(AuthNetworkGlitch(message: "No network Connection found"));
    }
  }

  @override
  Future<Either<AuthGlitch, Unit>> verifyOTP(VerifyOTPRequest request) async {
    if (await _networkInfo.isConnected) {
      final response = await _apiManager.post(
        url: ApiUrls.validatePhoneNumberOTP,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(AuthNetworkGlitch(message: failure.message));
        },
        (success) async {
          VerifyOTPRequest.fromJson(success);
          await _userRepo.saveUser(isVerified: true);
          return right(unit);
        },
      );
    } else {
      return left(AuthNetworkGlitch(message: "No network Connection found"));
    }
  }
}
