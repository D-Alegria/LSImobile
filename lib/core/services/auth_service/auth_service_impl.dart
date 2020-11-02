import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/api_urls.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
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

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final ApiManager _apiManager;
  final UserRepo _userRepo;
  final LocalStorageRepo _localStorageRepo;

  AuthServiceImpl(
    this._apiManager,
    this._userRepo,
    this._localStorageRepo,
  );

  @override
  Future<User> get currentUser async => await _userRepo.user;

  @override
  Future<Either<Glitch, Unit>> login(LoginUserRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.login,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(failure);
        },
        (success) async {
          final result = LoginUserResponse.fromJson(success);
          await _userRepo.saveUserDataLocal(User(
            id: result.userId,
            email: result.data.email,
            fullName: result.data.fullName,
            isAuthenticated: true,
            isVerified: true,
            password: request.password,
            token: result.token,
            profilePicture: result.data.profilePicture,
          ));
          return right(unit);
        },
      );
    });
  }

  @override
  Future<Either<Glitch, Unit>> register(RegisterUserRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.register,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(failure);
        },
        (success) async {
          final result = RegisterUserResponse.fromJson(success);
          await _userRepo.saveUserDataLocal(User(
            id: result.userId,
            email: request.profile.email,
            fullName: request.profile.fullName,
            phoneNumber: request.profile.phone,
            isAuthenticated: true,
            isVerified: true,
            password: request.profile.password,
            token: result.token,
          ));
          return right(unit);
        },
      );
    });
  }

  @override
  Future<Either<Glitch, Unit>> sendOTP(SendOTPRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.validatePhoneNumber,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(failure);
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
  Future<Either<Glitch, Unit>> verifyOTP(VerifyOTPRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.validatePhoneNumberOTP,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(failure);
        },
        (success) async {
          VerifyOTPResponse.fromJson(success);
          return right(unit);
        },
      );
    });
  }

  Future<Either<Glitch, Unit>> checkNetwork(
    Future<Either<Glitch, Unit>> Function() function,
  ) async {
    try {
      return await function();
    } on Exception catch (e) {
      print(e);
      return left(
        ServerGlitch(
            message: "Internal System Error Occurred please contact developer"),
      );
    }
  }

  @override
  Future<Either<Glitch, Unit>> resetPassword(
      ResetPasswordRequest request) async {
    return await checkNetwork(() async {
      final response = await _apiManager.post(
        url: ApiUrls.resetPassword,
        requestBody: request.toJson(),
      );
      return response.fold(
        (failure) {
          return left(failure);
        },
        (success) async {
          VerifyOTPResponse.fromJson(success);
          return right(unit);
        },
      );
    });
  }

  @override
  Future<Either<Glitch, Unit>> logout() async {
    try {
      final result = await _userRepo.clearUserData;
      return result.fold(
        (l) => null,
        (r) => right(unit),
      );
    } on Exception catch (e) {
      print(e);
      return left(
        ServerGlitch(
            message: "Internal System Error Occurred please contact developer"),
      );
    }
  }
}
