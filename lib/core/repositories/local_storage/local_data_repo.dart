abstract class LocalStorageRepo {
  bool getBool(String key, {bool def});

  Future<void> saveBool(String key, bool value);

  String getString(String key, {String def});

  Future<void> saveString(String key, String value);

  int getInt(String key, {int def});

  Future<void> saveInt(String key, int value);

  double getDouble(String key, {double def});

  Future<void> saveDouble(String key, double value);

  List<String> getListOfStrings(String key, {List<String> def});

  Future<void> saveListOfStrings(String key, List<String> value);

  Future<bool> saveIfAbsent(String key, String value);

  Future<bool> removeKey(String key);
}
