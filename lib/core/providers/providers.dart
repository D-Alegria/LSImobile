import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lsi_mobile/core/configs/dependency_injection/injection.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/auth_form/auth_form_bloc.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:lsi_mobile/ui/views/main/home/view_model/home_viewmodel.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_products/view_model/investment_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/investment_view/view_model/investment_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/investment/new_investment/view_model/new_investment_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/account_info/view_model/account_info_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/edu_and_employ/view_model/edu_and_employ_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/emergency_contact/view_model/emergency_contact_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_details/view_model/loan_details_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_product/loan_product/loan_product_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/loan_schedule/view_model/loan_schedule_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/loans_view/view_model/loan_view_cubit.dart';
import 'package:lsi_mobile/ui/views/main/loans/personal_info/view_model/personal_info_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/provide_bvn/view_model/provide_bvn_bloc.dart';
import 'package:lsi_mobile/ui/views/main/loans/residence/view_model/residence_bloc.dart';
import 'package:lsi_mobile/ui/views/main/profile/view_models/edit_profile/edit_profile_bloc.dart';
import 'package:lsi_mobile/ui/views/main/view_model/user_profile/user_profile_bloc.dart';
import 'package:lsi_mobile/ui/views/onboarding/view_model/onboard_page_cubit.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => HomeViewModel()),
];

blocs(BuildContext context) => [
      BlocProvider(create: (context) => getIt<AuthenticationBloc>()),
      BlocProvider(create: (context) => OnboardPageCubit()),
      BlocProvider(create: (context) => getIt<AuthFormBloc>()),
      BlocProvider(create: (context) => getIt<UserProfileBloc>()),
      BlocProvider(create: (context) => getIt<EditProfileBloc>()),
      BlocProvider(create: (context) => getIt<LoanViewCubit>()),
      BlocProvider(create: (context) => getIt<LoanProductCubit>()),
      BlocProvider(create: (context) => getIt<ProvideBvnBloc>()),
      BlocProvider(create: (context) => getIt<PersonalInfoBloc>()),
      BlocProvider(create: (context) => getIt<EmergencyContactBloc>()),
      BlocProvider(create: (context) => getIt<EduAndEmployBloc>()),
      BlocProvider(create: (context) => getIt<ResidenceBloc>()),
      BlocProvider(create: (context) => getIt<LoanDetailsBloc>()),
      BlocProvider(create: (context) => getIt<AccountInfoBloc>()),
      BlocProvider(create: (context) => getIt<LoanScheduleCubit>()),
      BlocProvider(create: (context) => getIt<InvestmentViewCubit>()),
      BlocProvider(create: (context) => getIt<InvestmentProductCubit>()),
      BlocProvider(create: (context) => getIt<NewInvestmentBloc>()),
    ];
