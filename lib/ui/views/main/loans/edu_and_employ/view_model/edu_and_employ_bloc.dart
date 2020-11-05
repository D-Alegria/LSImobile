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

part 'edu_and_employ_bloc.freezed.dart';

part 'edu_and_employ_event.dart';

part 'edu_and_employ_state.dart';

@lazySingleton
class EduAndEmployBloc extends Bloc<EduAndEmployEvent, EduAndEmployState> {
  final UserRepo _userRepo;

  final UserRemoteDataSource _userRemoteDataSource;

  EduAndEmployBloc(this._userRepo, this._userRemoteDataSource)
      : super(EduAndEmployState.initial());

  @override
  Stream<EduAndEmployState> mapEventToState(
    EduAndEmployEvent event,
  ) async* {
    yield* event.map(
      submitEduAndEmploy: (value) async* {
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
            isSubmitting: true,
            submitFailureOrSuccess: None(),
          );
          UserDetailsRequest request;
          request = state.userDetails.copyWith.work(
            employer: state.employerName.trim(),
            netMonthlyIncome: state.monthlyIncome.trim(),
            workSectorText: state.workSector.trim(),
            workSector: state.workSector.trim(),
            workStartDate: state.startDate.trim(),
            educationQualification: state.levelOfEducation.trim(),
          );

          print('$request\n\n');
          request = request.copyWith.education(
            educationalQualification: state.levelOfEducation.trim(),
          );

          print('$request\n\n');

          print('sending');

          failureOrSuccess = await _userRepo.saveUserDataRemote(request);
          await failureOrSuccess.fold(
            (l) => null,
            (r) async => await _userRepo.updateUserDataLocal(
                isEduAndEmpInfoFilled: true),
          );
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      employmentStatusChanged: (e) async* {
        yield state.copyWith(
          employmentStatus: e.employmentStatus,
          submitFailureOrSuccess: None(),
        );
      },
      monthlyIncomeChanged: (e) async* {
        yield state.copyWith(
          monthlyIncome: e.monthlyIncome,
          submitFailureOrSuccess: None(),
        );
      },
      startDateChanged: (e) async* {
        yield state.copyWith(
          startDate: e.startDate,
          submitFailureOrSuccess: None(),
        );
      },
      employerNameChanged: (e) async* {
        yield state.copyWith(
          employerName: e.employerName,
          submitFailureOrSuccess: None(),
        );
      },
      levelOfEducationChanged: (e) async* {
        yield state.copyWith(
          levelOfEducation: e.levelOfEducation,
          submitFailureOrSuccess: None(),
        );
      },
      workSectorChanged: (e) async* {
        yield state.copyWith(
          workSector: e.workSector,
          submitFailureOrSuccess: None(),
        );
      },
      init: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final levelsOfEducation = await _userRemoteDataSource.educationSectors;
        final workSectors = await _userRemoteDataSource.workSectors;
        final occupation = await _userRemoteDataSource.occupations;

        yield state.copyWith(
          userDetails: e.data,
          employerName: e.data.work.employer ?? '',
          startDate: e.data.work.workStartDate ?? '',
          monthlyIncome: e.data.work.netMonthlyIncome ?? '',
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

        yield* occupation.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(employmentStatuses: r);
          },
        );

        yield state.copyWith(
          levelOfEducation: nullCheck(e.data.education.educationalQualification,
                  state.levelsOfEducation) ??
              state.levelsOfEducation.first.id,
          workSector: nullCheck(e.data.work.workSector, state.workSectors) ??
              state.workSectors.first.id,
          employmentStatus:
              nullCheck(e.data.work.occupationId, state.employmentStatuses) ??
                  state.employmentStatuses.first.id,
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
