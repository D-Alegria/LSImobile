import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:lsi_mobile/core/models/app_config/app_config.dart';

abstract class FileReader {
  static Map<String, dynamic> _config;
  static List faq;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    final faqString =
        await rootBundle.loadString('assets/docs/json/faqs.json');
    _config = json.decode(configString) as Map<String, dynamic>;
    faq = json.decode(faqString) as List;
  }

  static AppConfig getAppConfig() {
    return AppConfig.fromJson(_config);
  }
}
