import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String fullName;
  @HiveField(2)
  final String phoneNumber;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String profilePicture;
  @HiveField(5)
  final String password;
  @HiveField(6)
  final bool isAuthenticated;
  @HiveField(7)
  final bool isVerified;
  @HiveField(8)
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
