import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';

abstract class UserRepo {
  Future<Either<Glitch, UserDetailsData>> get userDataRemote;

  Future<Either<Glitch, Unit>> saveUserDataLocal(User user);

  Future<Either<Glitch, Unit>> saveUserDataRemote(UserDetailsRequest user);

  Future<Either<Glitch, Unit>> updateUserDataLocal({
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

  Future<Either<Glitch, Unit>> get clearUserData;

  Future<User> get user;
}
