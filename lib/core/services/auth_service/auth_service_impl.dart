import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
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
import 'package:lsi_mobile/core/utils/function_util.dart';

@LazySingleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  final ApiManager _apiManager;
  final UserRepo _userRepo;

  AuthServiceImpl(
    this._apiManager,
    this._userRepo,
  );

  @override
  Future<Either<Glitch, User>> get currentUser async => await _userRepo.user;

  @override
  Future<Either<Glitch, Unit>> login(LoginUserRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:AuSe-L",
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.login,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) async {
            final result = LoginUserResponse.fromJson(success);

            if (result.status) {
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
            } else {
              return left(SystemGlitch(message: result.message));
            }
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> register(RegisterUserRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:AuSe-R",
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.register,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) async {
            final result = RegisterUserResponse.fromJson(success);
            if (result.status) {
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
            } else {
              if (result.responseCode == "04")
                return left(UnAuthenticatedGlitch(message: result.message));
              return left(SystemGlitch(message: result.message));
            }
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> sendOTP(SendOTPRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:AuSe-SO",
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.validatePhoneNumber,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) async {
            final result = SendOTPResponse.fromJson(success);
            if (result.status) {
              await _userRepo.saveObject("OTP", result.otp);
              return right(unit);
            } else {
              return left(SystemGlitch(message: result.message));
            }
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> verifyOTP(VerifyOTPRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:AuSe-VO",
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.validatePhoneNumberOTP,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) async {
            final result = VerifyOTPResponse.fromJson(success);
            if (result.status) return right(unit);
            return left(SystemGlitch(message: result.message));
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> resetPassword(
      ResetPasswordRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:AuSe-RP",
      function: () async {
        final response = await _apiManager.post(
          url: ApiUrls.resetPassword,
          requestBody: request.toJson(),
        );
        return response.fold(
          (failure) => left(failure),
          (success) async {
            // TODO fix Reset password Response
            final result = VerifyOTPResponse.fromJson(success);
            if (result.status) return right(unit);
            return left(SystemGlitch(message: result.message));
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> logout() async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:AuSe-LO",
      function: () async {
        final result = await _userRepo.clearUserData;
        return result.fold((l) => left(l), (r) => right(unit));
      },
    );
  }
}
