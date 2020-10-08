import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:lsi_mobile/core/models/app_config/app_config.dart';

abstract class ConfigReader {
  static Map<String, dynamic> _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static AppConfig getAppConfig() {
    return AppConfig.fromJson(_config);
  }
}
