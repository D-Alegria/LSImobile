import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/recent_transaction/recent_transaction.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/enums/drop_down_menu.dart';
import 'package:lsi_mobile/core/models/requests/token_request/token_request.dart';
import 'package:lsi_mobile/core/models/requests/update_profile_profile/update_profile_picture_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final UserLocalDataSource _userLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepoImpl(this._userLocalDataSource, this._userRemoteDataSource);

  @override
  Future<Either<Glitch, UserDetailsData>> get userDataRemote async {
    return await tryMethod<UserDetailsData>(
      errorMessage: "Internal System Error Occurred:URP-UDR",
      function: () async {
        final token = await userToken;
        return token.fold((l) => left(l), (r) async {
          final result = await _userRemoteDataSource.getUserDetails(
            TokenRequest(token: r),
          );
          return result.fold(
            (failure) => left(ServerGlitch(message: failure.message)),
            (success) => right(success),
          );
        });
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDataLocal(User user) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:URP-SUDL",
      function: () async {
        final result = await _userLocalDataSource.saveUser(user: user);
        return result.fold(
          (failure) => left(failure),
          (success) => right(success),
        );
      },
    );
  }

  @override
  Future<Either<Glitch, User>> get user async {
    final result = await _userLocalDataSource.user;
    return result.fold(
      (l) => left(l),
      (r) {
        if (r == null)
          return left(UnAuthenticatedGlitch(message: "No User Found"));
        return right(r);
      },
    );
  }

  @override
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
  }) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:URP-UUDL",
      function: () async {
        final result = await _userLocalDataSource.updateUser(
          token: token,
          profilePicture: profilePicture,
          phoneNumber: phoneNumber,
          password: password,
          isVerified: isVerified,
          isAuthenticated: isAuthenticated,
          id: id,
          email: email,
          fullName: fullName,
          isEduAndEmpInfoFilled: isEduAndEmpInfoFilled,
          isEmergenceContactFilled: isEmergenceContactFilled,
          isPersonalInfoFilled: isPersonalInfoFilled,
          isResidenceFilled: isResidenceFilled,
        );
        return result.fold(
          (failure) => left(ServerGlitch(message: failure.message)),
          (success) => right(unit),
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> get clearUserData async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:URP-CUD",
      function: () async {
        final result = await _userLocalDataSource.deleteUser();
        return result.fold(
          (failure) => left(ServerGlitch(message: failure.message)),
          (success) => right(success),
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> saveUserDataRemote(
      UserDetailsRequest request) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:URP-SUDR",
      function: () async {
        final token = await userToken;
        return token.fold(
          (l) => left(l),
          (r) async {
            var requestWithToken = request.copyWith(token: r);
            final result =
                await _userRemoteDataSource.saveUserDetails(requestWithToken);
            return result.fold(
              (failure) => left(ServerGlitch(message: failure.message)),
              (success) => right(unit),
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, List<RecentTransaction>>> get recentTransactions async {
    return await tryMethod<List<RecentTransaction>>(
      errorMessage: "Internal System Error Occurred:URP-RT",
      function: () async {
        final result = await userToken;
        return result.fold(
          (l) => left(l),
          (r) async {
            final result = await _userRemoteDataSource.getRecentTransactions(
              TokenRequest(token: r),
            );
            return result.fold(
              (failure) => left(failure),
              (success) => right(success),
            );
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, dynamic>> getObject(String key) async {
    return await tryMethod<dynamic>(
      errorMessage: "Internal System Error Occurred:URP-GOt",
      function: () async {
        final object = await _userLocalDataSource.getObject(key);
        return object.fold(
          (failure) => left(LocalCacheGlitch(message: failure.message)),
          (success) => right(success),
        );
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> saveObject(String key, value) async {
    return await tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:URP-SOt",
      function: () async {
        final object = await _userLocalDataSource.saveObject(key, value);
        return object.fold(
          (failure) => left(LocalCacheGlitch(message: failure.message)),
          (success) => right(success),
        );
      },
    );
  }

  Future<Either<Glitch, String>> get userToken async {
    return await tryMethod<String>(
      errorMessage: "Internal System Error Occurred:URP-GUTo",
      function: () async {
        final result = await user;
        return result.fold(
          (l) => left(l),
          (r) {
            if ((r.token ?? "").isEmpty)
              return left(
                  UnAuthenticatedGlitch(message: "User Not Authenticated"));
            return right(r.token);
          },
        );
      },
    );
  }

  @override
  Future<Either<Glitch, List<Value>>> getDropDownOptions(DropDownMenu menu,
          {String lga}) =>
      tryMethod<List<Value>>(
        errorMessage: "Internal System Error Occurred:URP-GUTo",
        function: () async {
          String key = lga == null ? menu.toString() : menu.toString() + lga;
          final local = await _userLocalDataSource.getValue(key);
          return local.fold(
            (failure) async => await getRemoteData(menu, lga: lga),
            (success) async {
              if (success.isEmpty)
                return await getRemoteData(menu, lga: lga);
              else
                return right(success);
            },
          );
        },
      );

  Future<Either<Glitch, List<Value>>> getRemoteData(DropDownMenu menu,
      {String lga}) async {
    Either<Glitch, List<Value>> remote;
    switch (menu) {
      case DropDownMenu.Gender:
        remote = await _userRemoteDataSource.genders;
        break;
      case DropDownMenu.EducationSectors:
        remote = await _userRemoteDataSource.educationSectors;
        break;
      case DropDownMenu.WorkSectors:
        remote = await _userRemoteDataSource.workSectors;
        break;
      case DropDownMenu.Occupations:
        remote = await _userRemoteDataSource.occupations;
        break;
      case DropDownMenu.MaritalStatuses:
        remote = await _userRemoteDataSource.maritalStatus;
        break;
      case DropDownMenu.ResidenceTypes:
        remote = await _userRemoteDataSource.residenceTypes;
        break;
      case DropDownMenu.States:
        remote = await _userRemoteDataSource.states;
        break;
      case DropDownMenu.Lgas:
        remote = await _userRemoteDataSource.getLGAS(lga);
        break;
    }
    return remote.fold(
      (failure) => left(failure),
      (success) async {
        String key = lga == null ? menu.toString() : menu.toString() + lga;
        await _userLocalDataSource.saveValue(key, success);
        return right(success);
      },
    );
  }

  @override
  Future<Either<Glitch, Unit>> uploadProfilePicture(File file) {
    return tryMethod<Unit>(
      errorMessage: "Internal System Error Occurred:URP-UPrPi",
      function: () async {
        final result = await userToken;
        return result.fold(
          (failure) => left(failure),
          (token) async {
            final result = await _userRemoteDataSource.uploadPicture(file);
            return result.fold(
              (failure) => left(failure),
              (success) async {
                final result = await _userRemoteDataSource.updateProfilePicture(
                    UpdateProfilePictureRequest(
                        filename: success.data.filename, token: token));
                return result.fold(
                  (failure) => left(failure),
                  (success) => right(unit),
                );
              },
            );
          },
        );
      },
    );
  }
}
