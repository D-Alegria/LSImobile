import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/utils/config_reader_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => ConfigReader.getAppConfig().baseUrl;

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) {
    return Dio(
        BaseOptions(
          baseUrl: url,
          contentType: "application/json",
          headers: {"x-api-key": ConfigReader.getAppConfig().apiKey},
        ),
      );
  }


  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
