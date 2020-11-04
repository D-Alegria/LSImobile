// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../ui/views/main/profile/view_models/accounts_cards/accounts_cards_bloc.dart';
import '../../utils/api_manager_util.dart';
import '../../../ui/views/authentication/view_model/auth_form/auth_form_bloc.dart';
import '../../services/auth_service/auth_service.dart';
import '../../services/auth_service/auth_service_impl.dart';
import '../../../ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import '../../datasources/bank/bank_remote_datasource.dart';
import '../../repositories/bank/bank_repo.dart';
import '../../repositories/bank/bank_repo_impl.dart';
import '../interceptor/dio_interceptor.dart';
import '../../../ui/views/main/profile/view_models/edit_profile/edit_profile_bloc.dart';
import '../../datasources/investment/investment_remote_datasource.dart';
import '../../repositories/investment/investment_repo.dart';
import '../../repositories/investment/investment_repo_impl.dart';
import '../../../ui/views/main/loans/view_model/loan_product/loan_product_cubit.dart';
import '../../datasources/loan/loan_remote_datasource.dart';
import '../../repositories/loan/loan_repo.dart';
import '../../repositories/loan/loan_repo_impl.dart';
import '../../../ui/views/main/loans/view_model/loan_view/loan_view_cubit.dart';
import '../../datasources/local_storage/local_data_repo.dart';
import '../../datasources/local_storage/local_storage_repo_impl.dart';
import '../../utils/network_util.dart';
import 'register_modules.dart';
import '../../datasources/user/user_local_datasource.dart';
import '../../../ui/views/main/view_model/user_profile/user_profile_bloc.dart';
import '../../datasources/user/user_remote_datasource.dart';
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
  gh.lazySingleton<UserLocalDataSource>(() => UserLocalDataSourceImpl());
  gh.lazySingleton<ApiManager>(() => ApiManager(get<NetworkInfo>()));
  gh.lazySingleton<BankRemoteDataSource>(
      () => BankRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<BankRepo>(() =>
      BankRepoImpl(get<UserLocalDataSource>(), get<BankRemoteDataSource>()));
  gh.lazySingleton<Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<DioInterceptor>(() => DioInterceptor(get<Dio>()));
  gh.lazySingleton<InvestmentRemoteDataSource>(
      () => InvestmentRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<InvestmentRepo>(() => InvestmentRepoImpl(
      get<UserLocalDataSource>(), get<InvestmentRemoteDataSource>()));
  gh.lazySingleton<LoanRemoteDataSource>(
      () => LoanRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<LoanRepo>(() =>
      LoanRepoImpl(get<UserLocalDataSource>(), get<LoanRemoteDataSource>()));
  gh.factory<LoanViewCubit>(() => LoanViewCubit(get<LoanRepo>()));
  gh.lazySingleton<LocalStorageRepo>(
      () => LocalStorageRepoImpl(get<SharedPreferences>()));
  gh.lazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<UserRepo>(() =>
      UserRepoImpl(get<UserLocalDataSource>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<AccountsCardsBloc>(() => AccountsCardsBloc(get<BankRepo>()));
  gh.lazySingleton<AuthService>(() => AuthServiceImpl(
        get<ApiManager>(),
        get<UserRepo>(),
        get<LocalStorageRepo>(),
      ));
  gh.factory<AuthenticationBloc>(() => AuthenticationBloc(get<AuthService>()));
  gh.factory<EditProfileBloc>(
      () => EditProfileBloc(get<UserRepo>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<LoanProductCubit>(
      () => LoanProductCubit(get<LoanRepo>(), get<UserRepo>()));
  gh.factory<UserProfileBloc>(
      () => UserProfileBloc(get<UserRepo>(), get<InvestmentRepo>()));
  gh.lazySingleton<AuthFormBloc>(
      () => AuthFormBloc(get<AuthService>(), get<LocalStorageRepo>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
