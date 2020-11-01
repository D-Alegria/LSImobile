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
        final genders = await _userRemoteDataSource.genders;
        final levelsOfEducation = await _userRemoteDataSource.educationSectors;
        final workSectors = await _userRemoteDataSource.workSectors;

        yield state.copyWith(
          userDetails: e.userDetails,
          firstName: e.userDetails.profile.legalName.split(' ')[0] ?? '',
          lastName: e.userDetails.profile.legalName.split(' ')[1] ?? '',
          gender: e.userDetails.profile.gender ?? '0',
          dateOfBirth: e.userDetails.profile.dateOfBirth ?? '',
          phoneNumber: e.userDetails.profile.phone ?? '',
          emailAddress: e.userDetails.profile.email ?? '',
          employerName: e.userDetails.work.employer ?? '',
          // employmentStatus: e.userDetails.work. ?? '0',
          levelOfEducation:
          e.userDetails.education.educationalQualification ?? '0',
          startDate: e.userDetails.work.workStartDate ?? '',
          monthlyIncome: e.userDetails.work.netMonthlyIncome ?? '',
          workSector: e.userDetails.work.workSector ?? '0',
        );

        yield* genders.fold(
              (l) async* {
            print(l.message);
          },
              (r) async* {
            yield state.copyWith(genders: r);
          },
        );

        yield* levelsOfEducation.fold(
              (l) async* {
            print(l.message);
          },
              (r) async* {
            yield state.copyWith(levelsOfEducation: r);
          },
        );

        yield* workSectors.fold(
              (l) async* {
            print(l.message);
          },
              (r) async* {
            yield state.copyWith(workSectors: r);
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

          failureOrSuccess = await _userRepo.saveUserDataRemote(request);
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
      employerNameChanged: (e) async* {
        yield state.copyWith(
          employerName: e.employerName,
          submitFailureOrSuccess: None(),
        );
      },
      startDateChanged: (e) async* {
        yield state.copyWith(
          startDate: e.startDate,
          submitFailureOrSuccess: None(),
        );
      },
      levelOfEducationChanged: (e) async* {
        yield state.copyWith(
          levelOfEducation: e.levelOfEducation,
          submitFailureOrSuccess: None(),
        );
      },
      monthlyIncomeChanged: (e) async* {
        yield state.copyWith(
          monthlyIncome: e.monthlyIncome,
          submitFailureOrSuccess: None(),
        );
      },
      workSectorChanged: (e) async* {
        yield state.copyWith(
          workSector: e.workSector,
          submitFailureOrSuccess: None(),
        );
      },
      employmentStatusChanged: (e) async* {
        yield state.copyWith(
          employmentStatus: e.employmentStatus,
          submitFailureOrSuccess: None(),
        );
      },
      submitEduAndEmpForm: (e) async* {
        print('begin');
        final isLevelOfEducationValid = state.levelOfEducation.isNotEmpty;
        final isEmploymentStatusValid = state.employmentStatus.isNotEmpty;
        final isWorkSectorValid = state.workSector.isNotEmpty;
        final isEmployerNameValid = state.employerName.isNotEmpty;
        final isStartDateValid = state.startDate.isNotEmpty;
        final isMonthlyIncomeValid = state.monthlyIncome.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isLevelOfEducationValid &&
            isEmploymentStatusValid &&
            isWorkSectorValid &&
            isEmployerNameValid &&
            isStartDateValid &&
            isMonthlyIncomeValid) {
          print('verified');
          yield state.copyWith(
            isLoading: true,
            isSubmitting: true,
            submitFailureOrSuccess: None(),
          );
          UserDetailsRequest request;
          request = state.userDetails.copyWith.work(
            netMonthlyIncome: state.monthlyIncome.trim(),
            workSector: state.workSector.trim(),
            workStartDate: state.startDate.trim(),
            educationQualification: state.levelOfEducation.trim(),
          );

          request = state.userDetails.copyWith.education(
            educationalQualification: state.levelOfEducation.trim(),
          );
          print('$request\n\n');

          print('sending');

          failureOrSuccess = await _userRepo.saveUserDataRemote(request);
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          isLoading: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
