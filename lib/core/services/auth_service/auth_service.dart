import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/requests/check_user_exists/check_user_exists_request.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/models/requests/reset_password/reset_password_request.dart';
import 'package:lsi_mobile/core/models/requests/send_otp/send_otp_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_otp/verify_otp_request.dart';

abstract class AuthService {
  Future<Either<Glitch, Unit>> register(RegisterUserRequest request);

  Future<Either<Glitch, Unit>> login(LoginUserRequest request);

  Future<Either<Glitch, Unit>> sendOTP(SendOTPRequest request);

  Future<Either<Glitch, Unit>> verifyOTP(VerifyOTPRequest request);

  Future<Either<Glitch, Unit>> resetPassword(ResetPasswordRequest request);

  Future<Either<Glitch, Unit>> checkUserExists(CheckUserExistsRequest request);

  Future<Either<Glitch, Unit>> logout();

  Future<Either<Glitch, User>> get currentUser;
}
