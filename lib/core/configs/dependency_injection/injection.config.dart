// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../ui/views/main/loans/account_info/view_model/account_info_bloc.dart';
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
import '../../../ui/views/main/loans/edu_and_employ/view_model/edu_and_employ_bloc.dart';
import '../../../ui/views/main/loans/emergency_contact/view_model/emergency_contact_bloc.dart';
import '../../../ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import '../../datasources/investment/investment_remote_datasource.dart';
import '../../repositories/investment/investment_repo.dart';
import '../../repositories/investment/investment_repo_impl.dart';
import '../../../ui/views/main/investment/investment_view/view_model/investment_view_cubit.dart';
import '../../../ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';
import '../../../ui/views/main/loans/loan_product/loan_product/loan_product_cubit.dart';
import '../../datasources/loan/loan_remote_datasource.dart';
import '../../repositories/loan/loan_repo.dart';
import '../../repositories/loan/loan_repo_impl.dart';
import '../../../ui/views/main/loans/loan_schedule/view_model/loan_schedule_cubit.dart';
import '../../../ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import '../../datasources/local_storage/local_data_repo.dart';
import '../../datasources/local_storage/local_storage_repo_impl.dart';
import '../../utils/network_util.dart';
import '../../../ui/views/main/investment/new_investment/view_model/new_investment_bloc.dart';
import '../../../ui/views/main/loans/personal_info/view_model/personal_info_bloc.dart';
import '../../../ui/views/main/loans/provide_bvn/view_model/provide_bvn_bloc.dart';
import '../../../ui/views/main/history/view_model/recent_transaction_cubit.dart';
import 'register_modules.dart';
import '../../../ui/views/main/loans/residence/view_model/residence_bloc.dart';
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
  gh.lazySingleton<NewInvestmentBloc>(() => NewInvestmentBloc());
  final sharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<UserLocalDataSource>(() => UserLocalDataSourceImpl());
  gh.lazySingleton<ApiManager>(() => ApiManager(get<NetworkInfo>()));
  gh.lazySingleton<BankRemoteDataSource>(
      () => BankRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<DioInterceptor>(() => DioInterceptor(get<Dio>()));
  gh.lazySingleton<InvestmentRemoteDataSource>(
      () => InvestmentRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<InvestmentRepo>(() => InvestmentRepoImpl(
      get<UserLocalDataSource>(), get<InvestmentRemoteDataSource>()));
  gh.lazySingleton<InvestmentViewCubit>(
      () => InvestmentViewCubit(get<InvestmentRepo>()));
  gh.lazySingleton<LoanRemoteDataSource>(
      () => LoanRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<LoanRepo>(() =>
      LoanRepoImpl(get<UserLocalDataSource>(), get<LoanRemoteDataSource>()));
  gh.lazySingleton<LoanScheduleCubit>(() => LoanScheduleCubit(get<LoanRepo>()));
  gh.lazySingleton<LoanViewCubit>(() => LoanViewCubit(get<LoanRepo>()));
  gh.lazySingleton<LocalStorageRepo>(
      () => LocalStorageRepoImpl(get<SharedPreferences>()));
  gh.lazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(get<ApiManager>()));
  gh.lazySingleton<UserRepo>(() =>
      UserRepoImpl(get<UserLocalDataSource>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<AuthService>(() => AuthServiceImpl(
        get<ApiManager>(),
        get<UserRepo>(),
        get<LocalStorageRepo>(),
      ));
  gh.factory<AuthenticationBloc>(() => AuthenticationBloc(get<AuthService>()));
  gh.lazySingleton<BankRepo>(() => BankRepoImpl(
        get<UserRepo>(),
        get<BankRemoteDataSource>(),
        get<LocalStorageRepo>(),
      ));
  gh.factory<EditProfileBloc>(
      () => EditProfileBloc(get<UserRepo>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<EduAndEmployBloc>(
      () => EduAndEmployBloc(get<UserRepo>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<EmergencyContactBloc>(
      () => EmergencyContactBloc(get<UserRepo>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<InvestmentProductCubit>(
      () => InvestmentProductCubit(get<InvestmentRepo>()));
  gh.lazySingleton<LoanDetailsBloc>(
      () => LoanDetailsBloc(get<UserRemoteDataSource>()));
  gh.lazySingleton<LoanProductCubit>(
      () => LoanProductCubit(get<LoanRepo>(), get<UserRepo>()));
  gh.lazySingleton<PersonalInfoBloc>(
      () => PersonalInfoBloc(get<UserRepo>(), get<UserRemoteDataSource>()));
  gh.lazySingleton<ProvideBvnBloc>(
      () => ProvideBvnBloc(get<BankRepo>(), get<LocalStorageRepo>()));
  gh.lazySingleton<RecentTransactionCubit>(
      () => RecentTransactionCubit(get<UserRepo>()));
  gh.lazySingleton<ResidenceBloc>(
      () => ResidenceBloc(get<UserRepo>(), get<UserRemoteDataSource>()));
  gh.factory<UserProfileBloc>(
      () => UserProfileBloc(get<UserRepo>(), get<InvestmentRepo>()));
  gh.lazySingleton<AccountInfoBloc>(() => AccountInfoBloc(
        get<UserRemoteDataSource>(),
        get<BankRepo>(),
        get<LoanRepo>(),
      ));
  gh.lazySingleton<AccountsCardsBloc>(() => AccountsCardsBloc(get<BankRepo>()));
  gh.lazySingleton<AuthFormBloc>(
      () => AuthFormBloc(get<AuthService>(), get<LocalStorageRepo>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
