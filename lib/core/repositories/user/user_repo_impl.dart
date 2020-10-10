import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/constants/local_storage_keys.dart';
import 'package:lsi_mobile/core/models/dto/user.dart';
import 'package:lsi_mobile/core/repositories/local_storage/local_data_repo.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';

@LazySingleton(as: UserRepo)
class UserRepoImpl implements UserRepo {
  final LocalStorageRepo _localStorageRepo;

  UserRepoImpl(this._localStorageRepo);

  @override
  Future<void> deleteUser() async {
    await _localStorageRepo.removeKey(LocalStorageKeys.userFullName);
    await _localStorageRepo.removeKey(LocalStorageKeys.userId);
    await _localStorageRepo.removeKey(LocalStorageKeys.userPhoneNo);
    await _localStorageRepo.removeKey(LocalStorageKeys.userEmail);
    await _localStorageRepo.removeKey(LocalStorageKeys.userPassword);
    await _localStorageRepo.removeKey(LocalStorageKeys.userIsAuthenticated);
    await _localStorageRepo.removeKey(LocalStorageKeys.userIsVerified);
    await _localStorageRepo.removeKey(LocalStorageKeys.userToken);
  }

  @override
  Future<bool> get isUserAuthenticated async =>await user.then((value) => value.isAuthenticated);

  @override
  Future<bool> get isUserVerified async => await user.then((value) => value.isVerified);

  @override
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
  }) async {
    if (id != null)
      await _localStorageRepo.saveString(LocalStorageKeys.userId, id);
    if (fullName != null)
      await _localStorageRepo.saveString(
          LocalStorageKeys.userFullName, fullName);
    if (phoneNumber != null)
      await _localStorageRepo.saveString(
          LocalStorageKeys.userPhoneNo, phoneNumber);
    if (email != null)
      await _localStorageRepo.saveString(LocalStorageKeys.userEmail, email);
    if (password != null)
      await _localStorageRepo.saveString(
          LocalStorageKeys.userPassword, password);
    if (isAuthenticated != null)
      await _localStorageRepo.saveBool(
          LocalStorageKeys.userIsAuthenticated, isAuthenticated);
    if (isVerified != null)
      await _localStorageRepo.saveBool(
          LocalStorageKeys.userIsVerified, isVerified);
    if (token != null)
      await _localStorageRepo.saveString(LocalStorageKeys.userToken, token);
    if (profilePicture != null)
      await _localStorageRepo.saveString(
          LocalStorageKeys.userProfilePicture, profilePicture);
    return user;
  }

  @override
  Future<User> get user async {
    String id = _localStorageRepo.getString(LocalStorageKeys.userId);
    String fullName =
        _localStorageRepo.getString(LocalStorageKeys.userFullName);
    String phoneNumber =
        _localStorageRepo.getString(LocalStorageKeys.userPhoneNo);
    String email = _localStorageRepo.getString(LocalStorageKeys.userFullName);
    String password =
        _localStorageRepo.getString(LocalStorageKeys.userPassword);
    bool isAuthenticated =
        _localStorageRepo.getBool(LocalStorageKeys.userIsAuthenticated);
    bool isVerified = _localStorageRepo.getBool(LocalStorageKeys.userIsVerified);
    String token = _localStorageRepo.getString(LocalStorageKeys.userToken);
    String profilePicture =
        _localStorageRepo.getString(LocalStorageKeys.userProfilePicture);
    return User(
      id: id,
      phoneNumber: phoneNumber,
      token: token,
      password: password,
      isVerified: isVerified ?? false,
      isAuthenticated: isAuthenticated ?? false,
      fullName: fullName,
      email: email,
      profilePicture: profilePicture,
    );
  }
}
