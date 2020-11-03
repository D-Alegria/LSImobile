import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/recent_transaction/recent_transaction.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_data.dart';
import 'package:lsi_mobile/core/repositories/investment/investment_repo.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'user_profile_bloc.freezed.dart';

part 'user_profile_event.dart';

part 'user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserRepo _userRepo;
  final InvestmentRepo _investmentRepo;

  UserProfileBloc(this._userRepo, this._investmentRepo) : super(Initial());

  @override
  Stream<UserProfileState> mapEventToState(
    UserProfileEvent event,
  ) async* {
    yield* event.map(
      getUserDetails: (_) async* {
        yield Loading();
        try {
          final result = await _userRepo.userDataRemote;
          final investResult = await _investmentRepo.investmentBalance;
          final recentHistoryResult = await _userRepo.recentTransactions;
          UserData userData;
          String investmentBalance;
          List<RecentTransaction> recentTransactions;

          yield* result.fold(
            (l) async* {
              print(l.message);
              yield Error(l.message);
            },
            (r) async* {
              userData = r.userData;
            },
          );

          yield* investResult.fold(
            (l) async* {
              print(l.message);
              yield Error(l.message);
            },
            (r) async* {
              investmentBalance = r;
            },
          );

          yield* recentHistoryResult.fold((l) async* {
            print(l.message);
            yield Error(l.message);
          }, (r) async* {
            recentTransactions = r;
            yield Loaded(
              userDetailsRequest: userData.data,
              fullName: userData.data.profile.legalName ?? "",
              investmentBalance: investmentBalance,
              profilePicture: userData.data.profile.fileName ?? "",
              recentTransactions: recentTransactions,
            );
          });
        } on Exception catch (e) {
          print(e);
          yield Error("An error occurred");
        }
      },
    );
  }
}
