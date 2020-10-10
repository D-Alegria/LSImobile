import 'package:lsi_mobile/core/models/dto/user.dart';

abstract class UserRepo {
  Future<User> get user;

  Future<User> saveUser({
    String id,
    String fullName,
    String phoneNumber,
    String email,
    String profilePicture,
    String password,
    bool isAuthenticated,
    bool isVerified,
    String token,
  });

  Future<void> deleteUser();

  Future<bool> get isUserAuthenticated;

  Future<bool> get isUserVerified;
}
