import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/auth_glitch.dart';
import 'package:lsi_mobile/core/models/dto/user.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/models/requests/send_otp/send_otp_request.dart';
import 'package:lsi_mobile/core/models/requests/verify_otp/verify_otp_request.dart';

abstract class AuthService {
  Future<Either<AuthGlitch, Unit>> register(RegisterUserRequest request);

  Future<Either<AuthGlitch, Unit>> login(LoginUserRequest request);

  Future<Either<AuthGlitch, Unit>> sendOTP(SendOTPRequest request);

  Future<Either<AuthGlitch, Unit>> verifyOTP(VerifyOTPRequest request);

  Future<User> get currentUser;
}
