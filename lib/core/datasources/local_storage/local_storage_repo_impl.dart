import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'local_data_repo.dart';

@LazySingleton(as: LocalStorageRepo)
class LocalStorageRepoImpl implements LocalStorageRepo {
  final SharedPreferences _sharedPreferences;

  LocalStorageRepoImpl(this._sharedPreferences);

  @override
  bool getBool(String key, {def}) {
    return _sharedPreferences.getBool(key) ?? def;
  }

  @override
  int getInt(String key, {def}) {
    return _sharedPreferences.getInt(key) ?? def;
  }

  @override
  String getString(String key, {def}) {
    return _sharedPreferences.getString(key) ?? def;
  }

  @override
  Future<void> saveBool(String key, bool value) async {
    await _sharedPreferences.setBool(key, value);
  }

  @override
  Future<void> saveString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  @override
  Future<void> saveInt(String key, int value) async {
    await _sharedPreferences.setInt(key, value);
  }

  @override
  double getDouble(String key, {def}) {
    return _sharedPreferences.getDouble(key) ?? def;
  }

  @override
  List<String> getListOfStrings(String key, {def}) {
    return _sharedPreferences.getStringList(key) ?? def;
  }

  @override
  Future<void> saveDouble(String key, double value) async {
    await _sharedPreferences.setDouble(key, value);
  }

  @override
  Future<void> saveListOfStrings(String key, List value) async {
    await _sharedPreferences.setStringList(key, value);
  }

  @override
  Future<bool> saveIfAbsent(String key, String value) async {
    bool present = _sharedPreferences.containsKey(key);
    if (!present) await _sharedPreferences.setString(key, value);
    return !present;
  }

  @override
  Future<bool> removeKey(String key) {
    return _sharedPreferences.remove(key);
  }
}
