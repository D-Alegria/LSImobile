import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_local_datasource.dart';
import 'package:lsi_mobile/core/models/dto/user/user.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  await Hive.initFlutter();
  Hive.registerAdapter(ValueAdapter());
  Hive.registerAdapter(UserAdapter());
  await $initGetIt(getIt, environment: env);
  await initLocalStore();
}

initLocalStore() async {
  await getIt<UserLocalDataSource>().init;
}
