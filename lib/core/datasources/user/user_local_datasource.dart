import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/constants.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

abstract class UserLocalDataSource {
  Future<Either<Glitch, User>> get user;

  Future<Either<Glitch, List<Value>>> getValue(String key);

  Future<Either<Glitch, Unit>> saveValue(String key, List<Value> values);

  Future<Either<Glitch, Unit>> saveObject(String key, dynamic value);

  Future<Either<Glitch, dynamic>> getObject(String key);

  Future<Either<Glitch, Unit>> saveUser({User user});

  Future<Either<Glitch, Unit>> updateUser({
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

  Future<Either<Glitch, Unit>> deleteUser();
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  UserLocalDataSourceImpl();

  @override
  Future<Either<Glitch, Unit>> deleteUser() async {
    return await tryMethod<Unit>(
      function: () async {
        var key = await encryptedKey;
        var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
        userBox.delete(Constants.userKey);
        return right(unit);
      },
      errorMessage: "Cache Malfunction: DU",
    );
  }

  @override
  Future<Either<Glitch, Unit>> saveUser({User user}) async {
    return await tryMethod<Unit>(
      function: () async {
        var key = await encryptedKey;
        var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
        userBox.put(Constants.userKey, user);
        return right(unit);
      },
      errorMessage: "Cache Malfunction: SU",
    );
  }

  @override
  Future<Either<Glitch, User>> get user async {
    return await tryMethod<User>(
      function: () async {
        var key = await encryptedKey;
        var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
        User user = userBox.get(Constants.userKey);
        return right(user);
      },
      errorMessage: "Cache Malfunction: Gu",
    );
  }

  @override
  Future<Either<Glitch, List<Value>>> getValue(String key) async {
    return await tryMethod<List<Value>>(
      function: () async {
        var valueBox = await Hive.openBox<List<Value>>(Constants.valueBox);
        final List<Value> values = valueBox.get(key);
        return values.isEmpty
            ? left(LocalCacheGlitch(message: "No Cache Found"))
            : right(values);
      },
      errorMessage: "Cache Malfunction",
    );
  }

  @override
  Future<Either<Glitch, Unit>> saveValue(String key, List<Value> values) async {
    return await tryMethod<Unit>(
      function: () async {
        var valueBox = await Hive.openBox<List<Value>>(Constants.valueBox);
        valueBox.put(key, values);
        return right(unit);
      },
      errorMessage: "Cache Malfunction",
    );
  }

  Future<List<int>> get encryptedKey async {
    var encryptionBox = await Hive.openBox(Constants.encryptionBox);
    var key;
    if (encryptionBox.containsKey(Constants.userEncryptionKey)) {
      key = encryptionBox.get(Constants.userEncryptionKey);
    } else {
      key = Hive.generateSecureKey();
      encryptionBox.put(Constants.userEncryptionKey, key);
    }
    return key;
  }

  @override
  Future<Either<Glitch, Unit>> updateUser({
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
      function: () async {
        var key = await encryptedKey;
        var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
        User oldUser = userBox.get(Constants.userKey);
        User newUser;
        if (user != null) {
          newUser = User(
            fullName: fullName ?? oldUser.fullName,
            email: email ?? oldUser.email,
            id: id ?? oldUser.id,
            isAuthenticated: isAuthenticated ?? oldUser.isAuthenticated,
            isVerified: isVerified ?? oldUser.isVerified,
            isEduAndEmpInfoFilled:
                isEduAndEmpInfoFilled ?? oldUser.isEduAndEmpInfoFilled,
            isEmergenceContactFilled:
                isEmergenceContactFilled ?? oldUser.isEmergenceContactFilled,
            isPersonalInfoFilled:
                isPersonalInfoFilled ?? oldUser.isPersonalInfoFilled,
            isResidenceFilled: isResidenceFilled ?? oldUser.isResidenceFilled,
            password: password ?? oldUser.password,
            phoneNumber: phoneNumber ?? oldUser.phoneNumber,
            profilePicture: profilePicture ?? oldUser.profilePicture,
            token: token ?? oldUser.token,
          );
        } else {
          newUser = User(
            fullName: fullName,
            email: email,
            id: id,
            isAuthenticated: isAuthenticated ?? false,
            isVerified: isVerified ?? false,
            isEduAndEmpInfoFilled: isEduAndEmpInfoFilled ?? false,
            isEmergenceContactFilled: isEmergenceContactFilled ?? false,
            isPersonalInfoFilled: isPersonalInfoFilled ?? false,
            isResidenceFilled: isResidenceFilled ?? false,
            password: password,
            phoneNumber: phoneNumber,
            profilePicture: profilePicture,
            token: token,
          );
        }
        userBox.put(Constants.userKey, newUser);
        return right(unit);
      },
      errorMessage: "Cache Malfunction",
    );
  }

  @override
  Future<Either<Glitch, dynamic>> getObject(String key) async {
    return await tryMethod<dynamic>(
      function: () async {
        var localBox = await Hive.openBox(Constants.localBox);
        return right(localBox.get(key));
      },
      errorMessage: "Cache Malfunction",
    );
  }

  @override
  Future<Either<Glitch, Unit>> saveObject(String key, value) async {
    return await tryMethod<Unit>(
      function: () async {
        var localBox = await Hive.openBox(Constants.localBox);
        localBox.put(key, value);
        return right(unit);
      },
      errorMessage: "Cache Malfunction",
    );
  }
}
