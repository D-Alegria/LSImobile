import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/cache_glitch.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/constants/constants.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';

abstract class UserLocalDataSource {
  Future<Either<Glitch, User>> get user;

  Future<Either<CacheGlitch, List<Value>>> getValue(String key);

  Future<Unit> saveOtp();

  Future<String> get otp;

  Future<Either<CacheGlitch, Unit>> saveValue(String key, List<Value> values);

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
    String token,
  });

  Future<Either<Glitch, Unit>> deleteUser();

  Future<bool> get isUserAuthenticated;

  Future<bool> get isUserVerified;
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  UserLocalDataSourceImpl();

  @override
  Future<Either<Glitch, Unit>> deleteUser() async {
    try {
      var key = await encryptedKey;
      var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
      userBox.delete(Constants.userKey);
      return right(unit);
    } on Exception catch (e) {
      print(e);
      return left(LocalCacheGlitch(message: "Cache Malfunction"));
    }
  }

  @override
  Future<bool> get isUserAuthenticated async {
    final result = await user;
    return result.fold((failure) => null, (success) => success.isAuthenticated);
  }

  @override
  Future<bool> get isUserVerified async {
    final result = await user;
    return result.fold((failure) => null, (success) => success.isVerified);
  }

  @override
  Future<Either<Glitch, Unit>> saveUser({User user}) async {
    try {
      var key = await encryptedKey;
      var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
      userBox.put(Constants.userKey, user);
      return right(unit);
    } on Exception catch (e) {
      print(e);
      return left(LocalCacheGlitch(message: "Cache Malfunction"));
    }
  }

  @override
  Future<Either<Glitch, User>> get user async {
    try {
      var key = await encryptedKey;
      var userBox = await Hive.openBox(Constants.userBox, encryptionKey: key);
      User user = userBox.get(Constants.userKey);
      if (user == null) {
        user = User(
          fullName: "",
          email: "",
          id: "",
          isAuthenticated: false,
          isVerified: false,
          password: "",
          phoneNumber: "",
          profilePicture: "",
          token: "",
        );
      }
      return right(user);
    } on Exception catch (e) {
      print(e);
      return left(LocalCacheGlitch(message: "Cache Malfunction"));
    }
  }

  @override
  Future<Either<CacheGlitch, List<Value>>> getValue(String key) async {
    try {
      var valueBox = await Hive.openBox<List<Value>>(Constants.valueBox);
      final List<Value> values = valueBox.get(key);
      return values.isEmpty
          ? left(NoCacheFound(message: "No Cache Found"))
          : right(values);
    } on Exception catch (e) {
      print(e);
      return left(ErrorCacheGlitch(message: "Cache Malfunction"));
    }
  }

  @override
  Future<Either<CacheGlitch, Unit>> saveValue(
      String key, List<Value> values) async {
    try {
      var valueBox = await Hive.openBox<List<Value>>(Constants.valueBox);
      valueBox.put(key, values);
      return right(unit);
    } on Exception catch (e) {
      print(e);
      return left(ErrorCacheGlitch(message: "Cache Malfunction"));
    }
  }

  Future<List<int>> get encryptedKey async {
    var encryptionBox = await Hive.openBox(Constants.encryptionBox);
    var key;
    if (!encryptionBox.containsKey(Constants.userEncryptionKey)) {
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
    String token,
  }) async {
    try {
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
          isAuthenticated: isAuthenticated,
          isVerified: isVerified,
          password: password,
          phoneNumber: phoneNumber,
          profilePicture: profilePicture,
          token: token,
        );
      }
      userBox.put(Constants.userKey, newUser);
      return right(unit);
    } on Exception catch (e) {
      print(e);
      return left(LocalCacheGlitch(message: "Cache Malfunction"));
    }
  }

  @override
  // TODO: implement otp
  Future<String> get otp => throw UnimplementedError();

  @override
  Future<Unit> saveOtp() {
    // TODO: implement saveOtp
    throw UnimplementedError();
  }
}
