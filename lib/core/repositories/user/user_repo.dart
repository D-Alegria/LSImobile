import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/recent_transaction/recent_transaction.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/enums/drop_down_menu.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';

abstract class UserRepo {
  Future<Either<Glitch, UserDetailsData>> get userDataRemote;

  Future<Either<Glitch, List<RecentTransaction>>> get recentTransactions;

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
    bool isEduAndEmpInfoFilled,
    bool isEmergenceContactFilled,
    bool isPersonalInfoFilled,
    bool isResidenceFilled,
    String token,
  });

  Future<Either<Glitch, Unit>> get clearUserData;

  Future<Either<Glitch, User>> get user;

  Future<Either<Glitch, String>> get userToken;

  Future<Either<Glitch, Unit>> saveObject(String key, dynamic value);

  Future<Either<Glitch, dynamic>> getObject(String key);

  Future<Either<Glitch, List<Value>>> getDropDownOptions(DropDownMenu menu,
      {String lga});

  Future<Either<Glitch, Unit>> uploadProfilePicture(File file);
}
