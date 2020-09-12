import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/ui/lsi_app.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(LSIApp());
}
