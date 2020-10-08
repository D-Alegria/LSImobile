// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/api_manager_util.dart';
import '../../services/auth_service/auth_service.dart';
import '../../services/auth_service/auth_service_impl.dart';
import '../../repositories/local_storage/local_data_repo.dart';
import '../../repositories/local_storage/local_storage_repo_impl.dart';
import '../../utils/network_util.dart';
import '../../../ui/views/authentication/view_model/register/register_bloc.dart';
import 'register_modules.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<NetworkInfo>(() => NetworkInfoImpl());
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<LocalStorageRepo>(
      () => LocalStorageRepoImpl(get<SharedPreferences>()));
  gh.lazySingleton<ApiManager>(() => ApiManager(get<Dio>()));
  gh.lazySingleton<AuthService>(() => AuthServiceImpl(
        get<ApiManager>(),
        get<NetworkInfo>(),
        get<LocalStorageRepo>(),
      ));
  gh.factory<RegisterBloc>(() => RegisterBloc(get<AuthService>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
