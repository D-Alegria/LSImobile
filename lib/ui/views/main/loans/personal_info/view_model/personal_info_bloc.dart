import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'personal_info_bloc.freezed.dart';

part 'personal_info_event.dart';

part 'personal_info_state.dart';

@lazySingleton
class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  final UserRepo _userRepo;

  final UserRemoteDataSource _userRemoteDataSource;

  PersonalInfoBloc(this._userRepo, this._userRemoteDataSource)
      : super(PersonalInfoState.initial());

  @override
  Stream<PersonalInfoState> mapEventToState(
    PersonalInfoEvent event,
  ) async* {
    yield* event.map(
      submitPersonalInfo: (value) async* {
        print('begin');
        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isGenderValid = state.gender.isNotEmpty;
        final isEmailValid = state.emailAddress.isEmail;
        final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
        final isDateOfBirthValid = state.dateOfBirth.isNotEmpty;
        final isMartialStatusValid = state.maritalStatus.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isFirstNameValid &&
            isLastNameValid &&
            isPhoneNumberValid &&
            isEmailValid &&
            isGenderValid &&
            isDateOfBirthValid &&
            isMartialStatusValid) {
          print('verified');
          yield state.copyWith(
            isSubmitting: true,
            submitFailureOrSuccess: None(),
          );

          UserDetailsRequest request = state.userDetails.copyWith.profile(
            legalName: state.firstName.trim() + " " + state.lastName.trim(),
            email: state.emailAddress.trim(),
            phone: state.phoneNumber.trim(),
            dateOfBirth: state.dateOfBirth.trim(),
            birthYear: state.dateOfBirth.trim().split('-')[0],
            birthMonth: state.dateOfBirth.trim().split('-')[1],
            birthDay: state.dateOfBirth.trim().split('-')[2],
            gender: state.gender.trim(),
            maritalStatus: state.maritalStatus.trim(),
          );
          print('$request\n\n');

          print('sending');

          failureOrSuccess = await _userRepo.saveUserDataRemote(request);
          await failureOrSuccess.fold(
            (l) => null,
            (r) async =>
                await _userRepo.updateUserDataLocal(isPersonalInfoFilled: true),
          );
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: e.gender,
          submitFailureOrSuccess: None(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: e.lastName,
          submitFailureOrSuccess: None(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.email,
          submitFailureOrSuccess: None(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: e.phoneNumber,
          submitFailureOrSuccess: None(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: e.firstName,
          submitFailureOrSuccess: None(),
        );
      },
      dateOfBirthChanged: (e) async* {
        yield state.copyWith(
          dateOfBirth: e.dateOfBirth,
          submitFailureOrSuccess: None(),
        );
      },
      init: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final genders = await _userRemoteDataSource.genders;
        final maritalStatuses = await _userRemoteDataSource.maritalStatus;

        yield state.copyWith(
          userDetails: e.data,
          firstName: e.data.profile.legalName.split(' ')[0] ?? '',
          lastName: e.data.profile.legalName.split(' ')[1] ?? '',
          dateOfBirth: e.data.profile.dateOfBirth ?? '',
          phoneNumber: e.data.profile.phone ?? '',
          emailAddress: e.data.profile.email ?? '',
        );

        yield* genders.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(genders: r);
          },
        );

        yield* maritalStatuses.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(maritalStatuses: r);
          },
        );

        yield state.copyWith(
          gender: nullCheck(e.data.profile.gender, state.genders) ??
              state.genders.first.id,
          maritalStatus:
              nullCheck(e.data.profile.maritalStatus, state.maritalStatuses) ??
                  state.maritalStatuses.first.id,
          isSubmitting: false,
        );
      },
      maritalStatusChanged: (e) async* {
        yield state.copyWith(
          maritalStatus: e.maritalStatus,
          submitFailureOrSuccess: None(),
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
