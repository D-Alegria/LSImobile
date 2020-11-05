import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'residence_bloc.freezed.dart';

part 'residence_event.dart';

part 'residence_state.dart';

@lazySingleton
class ResidenceBloc extends Bloc<ResidenceEvent, ResidenceState> {
  final UserRepo _userRepo;

  final UserRemoteDataSource _userRemoteDataSource;

  ResidenceBloc(this._userRepo, this._userRemoteDataSource)
      : super(ResidenceState.initial());

  @override
  Stream<ResidenceState> mapEventToState(
    ResidenceEvent event,
  ) async* {
    yield* event.map(
      submitResidenceForm: (value) async* {
        print('begin');
        final isStateValid = state.state.isNotEmpty;
        final isLgaValid = state.lga.isNotEmpty;
        final isStayPeriodValid = state.stayPeriod.isNotEmpty;
        final isCurrentAddressValid = state.currentAddress.isNotEmpty;
        final isTypeOfResidenceValid = state.typeOfResidence.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isStateValid &&
            isLgaValid &&
            isStayPeriodValid &&
            isCurrentAddressValid &&
            isTypeOfResidenceValid) {
          print('verified');
          yield state.copyWith(
            isSubmitting: true,
            submitResidenceFailureOrSuccess: None(),
          );

          UserDetailsRequest request = state.userDetails.copyWith.homeAddress(
            homeAddress: state.currentAddress.trim(),
            homeState: state.state.trim(),
            homeLga: state.lga.trim(),
            timeAtCurrentAddress: state.stayPeriod.trim(),
            natureOfAccommodation: state.typeOfResidence.trim(),
            homeStateText: state.states
                .where((element) => element.id == state.state)
                .first
                .name,
            homeLgaText: state.lgas
                .where((element) => element.id == state.lga)
                .first
                .name,
            residentYears: state.stayPeriod.trim(),
          );
          print('$request\n\n');

          print('sending');

          failureOrSuccess = await _userRepo.saveUserDataRemote(request);
          await failureOrSuccess.fold(
            (l) => null,
            (r) async =>
                await _userRepo.updateUserDataLocal(isResidenceFilled: true),
          );
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitResidenceFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      lgaChanged: (e) async* {
        yield state.copyWith(
          lga: e.lga,
          submitResidenceFailureOrSuccess: None(),
        );
      },
      stayPeriodChanged: (e) async* {
        yield state.copyWith(
          stayPeriod: e.period,
          submitResidenceFailureOrSuccess: None(),
        );
      },
      stateChanged: (e) async* {
        yield state.copyWith(isSubmitting: true);

        final lgas = await _userRemoteDataSource.getLGAS(e.state);

        yield* lgas.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(lgas: r);
          },
        );

        yield state.copyWith(
          state: e.state,
          isSubmitting: false,
          lga: nullCheck(state.userDetails.homeAddress.homeLga, state.lgas) ??
              state.lgas.first.id,
          submitResidenceFailureOrSuccess: None(),
        );
      },
      typeOfResidenceChanged: (e) async* {
        yield state.copyWith(
          typeOfResidence: e.residence,
          submitResidenceFailureOrSuccess: None(),
        );
      },
      currentAddressChanged: (e) async* {
        yield state.copyWith(
          currentAddress: e.address,
          submitResidenceFailureOrSuccess: None(),
        );
      },
      init: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final residences = await _userRemoteDataSource.residenceTypes;
        final states = await _userRemoteDataSource.states;

        yield state.copyWith(
          userDetails: e.data,
          currentAddress: e.data.homeAddress.homeAddress ?? '',
          stayPeriod: e.data.homeAddress.timeAtCurrentAddress ?? '',
        );

        yield* residences.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(residences: r);
          },
        );

        yield* states.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(states: r);
          },
        );

        yield state.copyWith(
          typeOfResidence: nullCheck(
                  e.data.homeAddress.natureOfAccommodation, state.residences) ??
              state.residences.first.id,
          state: nullCheck(e.data.homeAddress.homeState, state.states) ??
              state.states.first.id,
          isSubmitting: false,
        );
      },
    );
  }
}

String nullCheck(String value, List<Value> list) {
  if (value == null) return null;
  if (list.where((e) => e.id == value).isEmpty) return null;
  return value;
}
