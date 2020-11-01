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

part 'edit_profile_bloc.freezed.dart';

part 'edit_profile_event.dart';

part 'edit_profile_state.dart';

@lazySingleton
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final UserRepo _userRepo;

  final UserRemoteDataSource _userRemoteDataSource;

  EditProfileBloc(this._userRepo, this._userRemoteDataSource)
      : super(EditProfileState.initial());

  @override
  Stream<EditProfileState> mapEventToState(EditProfileEvent event,) async* {
    yield* event.map(
      init: (e) async* {
        yield state.copyWith(isLoading: true);
        final result = await _userRepo.userDataRemote;
        final genders = await _userRemoteDataSource.genders;

        yield* result.fold(
              (l) async* {
            print(l.message);
          },
              (r) async* {
            yield state.copyWith(
              userDetails: r.userData.data,
              firstName: r.userData.data.profile.legalName.split(' ')[0],
              lastName: r.userData.data.profile.legalName.split(' ')[1],
              gender: r.userData.data.profile.gender ?? '0',
              dateOfBirth: r.userData.data.profile.dateOfBirth,
              phoneNumber: r.userData.data.profile.phone,
              emailAddress: r.userData.data.profile.email,
            );
          },
        );

        yield* genders.fold(
              (l) async* {
            print(l.message);
          },
              (r) async* {
            yield state.copyWith(genders: r);
          },
        );

        yield state.copyWith(isLoading: false);
      },
      submitEditProfileForm: (e) async* {
        print('begin');
        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isGenderValid = state.gender.isNotEmpty;
        final isEmailValid = state.emailAddress.isEmail;
        final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
        final isDateOfBirthValid = state.dateOfBirth.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isFirstNameValid &&
            isLastNameValid &&
            isPhoneNumberValid &&
            isEmailValid &&
            isGenderValid &&
            isDateOfBirthValid) {
          print('verified');
          yield state.copyWith(
            isLoading: true,
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
          );
          print('$request\n\n');


          print('sending');

          failureOrSuccess =
          await _userRepo.saveUserDataRemote(request);
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          isLoading: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.email,
          submitFailureOrSuccess: None(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: e.firstName,
          submitFailureOrSuccess: None(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: e.lastName,
          submitFailureOrSuccess: None(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: e.phoneNumber,
          submitFailureOrSuccess: None(),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: e.gender,
          submitFailureOrSuccess: None(),
        );
      },
      dateOfBirthChanged: (e) async* {
        yield state.copyWith(
          dateOfBirth: e.dateOfBirth,
          submitFailureOrSuccess: None(),
        );
      },
    );
  }
}
