// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/api_manager_util.dart';
import '../../../ui/views/authentication/view_model/auth_form/auth_form_bloc.dart';
import '../../services/auth_service/auth_service.dart';
import '../../services/auth_service/auth_service_impl.dart';
import '../../../ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import '../interceptor/dio_interceptor.dart';
import '../../repositories/local_storage/local_data_repo.dart';
import '../../repositories/local_storage/local_storage_repo_impl.dart';
import '../../utils/network_util.dart';
import 'register_modules.dart';
import '../../repositories/user/user_repo.dart';
import '../../repositories/user/user_repo_impl.dart';

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
  gh.lazySingleton<DioInterceptor>(() => DioInterceptor(get<Dio>()));
  gh.lazySingleton<LocalStorageRepo>(
      () => LocalStorageRepoImpl(get<SharedPreferences>()));
  gh.lazySingleton<UserRepo>(() => UserRepoImpl(get<LocalStorageRepo>()));
  gh.lazySingleton<ApiManager>(
      () => ApiManager(get<Dio>(), get<DioInterceptor>()));
  gh.lazySingleton<AuthService>(() => AuthServiceImpl(
        get<ApiManager>(),
        get<NetworkInfo>(),
        get<UserRepo>(),
      ));
  gh.factory<AuthenticationBloc>(() => AuthenticationBloc(get<AuthService>()));
  gh.factory<AuthFormBloc>(() => AuthFormBloc(get<AuthService>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
