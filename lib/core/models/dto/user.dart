import 'package:meta/meta.dart';

@immutable
class User {
  final String id;

  final String fullName;
  final String phoneNumber;
  final String email;
  final String profilePicture;
  final String password;
  final bool isAuthenticated;
  final bool isVerified;
  final String token;

  User({
    this.id,
    this.fullName,
    this.phoneNumber,
    this.email,
    this.profilePicture,
    this.password,
    this.isAuthenticated,
    this.isVerified,
    this.token,
  });
}
