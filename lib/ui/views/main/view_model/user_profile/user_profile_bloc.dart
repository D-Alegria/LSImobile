import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'user_profile_bloc.freezed.dart';

part 'user_profile_event.dart';

part 'user_profile_state.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserRepo _userRepo;

  UserProfileBloc(this._userRepo) : super(Initial());

  @override
  Stream<UserProfileState> mapEventToState(
    UserProfileEvent event,
  ) async* {
    yield* event.map(
      getUserDetails: (_) async* {
        yield Loading();
        try {
          final result = await _userRepo.userDataRemote;
          yield* result.fold(
            (l) async* {
              print(l.message);
              yield Error(l);
            },
            (r) async* {
              yield Loaded(
                userData: r,
                fullName: r.userData.data.profile.legalName ?? "",
                profilePicture: r.userData.data.profile.fileName ?? "",
              );
            },
          );
        } on Exception catch (e) {
          print(e);
          yield Error(SystemGlitch(message: "Error occurred in Bloc"));
        }
      },
    );
  }
}
