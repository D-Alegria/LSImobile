import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/auth_glitch.dart';
import 'package:lsi_mobile/core/models/requests/login_user/login_user_request.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';

abstract class AuthService {
  Future<Either<AuthGlitch, Unit>> register(RegisterUserRequest request);

  Future<Either<AuthGlitch, Unit>> login(LoginUserRequest request);

  Future<bool> get currentUser;
}
