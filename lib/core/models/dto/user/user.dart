import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject {
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
  @HiveField(9)
  final bool isResidenceFilled;
  @HiveField(10)
  final bool isPersonalInfoFilled;
  @HiveField(11)
  final bool isEmergenceContactFilled;
  @HiveField(12)
  final bool isEduAndEmpInfoFilled;
  @HiveField(13)
  final bool isBvnVerified;
  @HiveField(14)
  final String bvn;

  User({
    this.bvn,
    this.id,
    this.fullName,
    this.phoneNumber,
    this.email,
    this.profilePicture,
    this.password,
    this.isAuthenticated,
    this.isVerified,
    this.token,
    this.isBvnVerified,
    this.isPersonalInfoFilled,
    this.isEmergenceContactFilled,
    this.isEduAndEmpInfoFilled,
    this.isResidenceFilled,
  });
}
