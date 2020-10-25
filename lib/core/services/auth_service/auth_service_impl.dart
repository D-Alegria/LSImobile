import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/exceptions/auth_glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/dto/user.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/models/requests/reset_password/reset_password_request.dart';
import 'package:lsi_mobile/core/models/requests/send_otp/send_otp_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_otp/verify_otp_request.dart';
import 'package:lsi_mobile/core/models/responses/login_user/login_user_response.dart';
import 'package:lsi_mobile/core/models/responses/register_user/register_user_response.dart';
import 'package:lsi_mobile/core/models/responses/send_otp/send_otp_response.dart';
import 'package:lsi_mobile/core/models/responses/verify_otp/verify_otp_response.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:lsi_mobile/core/utils/api_manager_util.dart';
import 'package:lsi_mobile/core/utils/network_util.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final ApiManager _apiManager;
  final NetworkInfo _networkInfo;
  final UserRepo _userRepo;
  final LocalStorageRepo _localStorageRepo;

  AuthServiceImpl(
    this._apiManager,
    this._networkInfo,
    this._userRepo,
    this._localStorageRepo,
  );

  @override
  Future<User> get currentUser async => await _userRepo.user;

  @override
  Future<Either<AuthGlitch, Unit>> login(LoginUserRequest request) async {
    return await checkNetwork(() async {
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
            isVerified: true,
            password: request.password,
            token: result.token,
            profilePicture: result.data.profilePicture,
          );
          return right(unit);
        },
      );
    });
  }

  @override
  Future<Either<AuthGlitch, Unit>> register(RegisterUserRequest request) async {
    return await checkNetwork(() async {
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
    });
  }

  @override
  Future<Either<AuthGlitch, Unit>> sendOTP(SendOTPRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.validatePhoneNumber,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(AuthNetworkGlitch(message: failure.message));
        },
        (success) async {
          final result = SendOTPResponse.fromJson(success);
          await _localStorageRepo.saveString("OTP", result.otp);
          return right(unit);
        },
      );
    });
  }

  @override
  Future<Either<AuthGlitch, Unit>> verifyOTP(VerifyOTPRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.validatePhoneNumberOTP,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(AuthNetworkGlitch(message: failure.message));
        },
        (success) async {
          VerifyOTPResponse.fromJson(success);
          await _userRepo.saveUser(isVerified: true);
          return right(unit);
        },
      );
    });
  }

  Future<Either<AuthGlitch, Unit>> checkNetwork(
    Future<Either<AuthGlitch, Unit>> Function() function,
  ) async {
    try {
      if (await _networkInfo.isConnected) {
        return await function();
      } else {
        return left(AuthNetworkGlitch(message: "No network Connection found"));
      }
    } on Exception catch (e) {
      print(e);
      return left(AuthNetworkGlitch(
          message: "System Error Occurred please contact developer"));
    }
  }

  @override
  Future<Either<AuthGlitch, Unit>> resetPassword(ResetPasswordRequest request) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}
