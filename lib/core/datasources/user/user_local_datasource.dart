import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/constants/constants.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';

abstract class UserLocalDataSource {
  Future<void> get init;

  User get user;

  List<Value> getValue(String key);

  Unit saveValue(String key, List<Value> values);

  Unit saveObject(String key, dynamic value);

  Unit deleteObject(String key);

  dynamic getObject(String key);

  Unit saveUser({User user});

  Unit updateUser({
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

  Unit deleteUser();
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  Box _userBox;
  Box _valueBox;
  Box _localBox;
  Box _encryptionBox;

  UserLocalDataSourceImpl();

  Future<void> get init async {
    _encryptionBox = await Hive.openBox(Constants.encryptionBox);
    var key = await encryptedKey;
    _userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
    _valueBox = await Hive.openBox<List>(Constants.valueBox);
    _localBox = await Hive.openBox(Constants.localBox);
  }

  @override
  Unit deleteUser() {
    return tryLocalMethod<Unit>(function: () {
      _userBox.delete(Constants.userKey);
      return unit;
    });
  }

  @override
  Unit saveUser({User user}) {
    return tryLocalMethod<Unit>(
      function: () {
        // current user
        _userBox.put(user.id, user);
        saveObject(Constants.userKey, user.id);
        return unit;
      },
    );
  }

  @override
  User get user {
    return tryLocalMethod<User>(
      function: () {
        String currentUser = getObject(Constants.userKey);
        return currentUser == null ? null : _userBox.get(currentUser) as User;
      },
    );
  }

  @override
  List<Value> getValue(String key) {
    return tryLocalMethod<List<Value>>(function: () {
      var values = _valueBox.get(key);
      values = values?.cast<Value>();
      return (values ?? []).isEmpty ? [] : values;
    });
  }

  @override
  Unit saveValue(String key, List<Value> values) {
    return tryLocalMethod<Unit>(function: () {
      _valueBox.put(key, values);
      return unit;
    });
  }

  List<int> get encryptedKey {
    var key;
    if (_encryptionBox.containsKey(Constants.userEncryptionKey)) {
      key = _encryptionBox.get(Constants.userEncryptionKey);
    } else {
      key = Hive.generateSecureKey();
      _encryptionBox.put(Constants.userEncryptionKey, key);
    }
    return key;
  }

  @override
  Unit updateUser({
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
  }) {
    return tryLocalMethod<Unit>(
      function: () {
        String currentUser = getObject(Constants.userKey);
        User oldUser = _userBox.get(currentUser);
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
        _userBox.put(currentUser, newUser);
        return unit;
      },
    );
  }

  @override
  dynamic getObject(String key) {
    return tryLocalMethod<dynamic>(
      function: () => _localBox.get(key),
    );
  }

  @override
  Unit saveObject(String key, value) {
    return tryLocalMethod<Unit>(
      function: () {
        _localBox.put(key, value);
        return unit;
      },
    );
  }

  @override
  Unit deleteObject(String key) => tryLocalMethod<Unit>(
        function: () {
          _localBox.delete(key);
          return unit;
        },
      );
}
