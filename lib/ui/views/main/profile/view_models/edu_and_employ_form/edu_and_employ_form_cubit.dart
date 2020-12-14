import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/enums/drop_down_menu.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';
import 'package:meta/meta.dart';

part 'edu_and_employ_form_cubit.freezed.dart';

part 'edu_and_employ_form_state.dart';

@lazySingleton
class EduAndEmployFormCubit extends Cubit<EduAndEmployFormState> {
  final UserRepo _userRepo;

  EduAndEmployFormCubit(this._userRepo)
      : super(EduAndEmployFormState.initial());

  Future<void> init() async {
    emit(state.copyWith(
      isSubmitting: true,
      submitFailureOrSuccess: None(),
    ));
    UserDetailsRequest user;
    await _userRepo.userData().then(
          (value) => value.fold(
            (l) => null,
            (r) => user = r.userData.data,
          ),
        );

    List<Either<Glitch, List<Value>>> responses = await Future.wait([
      _userRepo.getDropDownOptions(DropDownMenu.EducationSectors),
      _userRepo.getDropDownOptions(DropDownMenu.WorkSectors),
      _userRepo.getDropDownOptions(DropDownMenu.Occupations),
    ]);

    emit(state.copyWith(
      userDetails: user,
      employerName: user.work.employer ?? '',
      startDate:
          "${(user.work.startYear ?? "").isEmpty ? '2000' : user.work.startYear}/${(user.work.startMonth ?? "").isEmpty ? '01' : user.work.startMonth}",
      monthlyIncome: user.work.netMonthlyIncome ?? '',
    ));

    responses[0].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(levelsOfEducation: success)),
    );

    responses[1].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(workSectors: success)),
    );

    responses[2].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(employmentStatuses: success)),
    );

    emit(state.copyWith(
      levelOfEducation: nullCheck(user.education.educationalQualification,
              state.levelsOfEducation) ??
          state.levelsOfEducation.first.id,
      workSector: nullCheck(user.work.workSector, state.workSectors) ??
          state.workSectors.first.id,
      employmentStatus:
          nullCheck(user.work.occupationId, state.employmentStatuses) ??
              state.employmentStatuses.first.id,
      isSubmitting: false,
    ));
  }

  void levelOfEducationChanged(String levelOfEducation) {
    emit(state.copyWith(
      levelOfEducation: levelOfEducation,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void employmentStatusChanged(String employmentStatus) {
    emit(state.copyWith(
      employmentStatus: employmentStatus,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void workSectorChanged(String workSector) {
    emit(state.copyWith(
      workSector: workSector,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void employerNameChanged(String employerName) {
    emit(state.copyWith(
      employerName: employerName,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void startDateChanged(String startDate) {
    emit(state.copyWith(
      startDate: startDate,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void monthlyIncomeChanged(String monthlyIncome) {
    emit(state.copyWith(
      monthlyIncome: monthlyIncome,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  Future<void> submitEduAndEmploy() async {
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
      emit(state.copyWith(
        isSubmitting: true,
        submitFailureOrSuccess: None(),
      ));

      UserDetailsRequest request;
      request = state.userDetails.copyWith.work(
        employer: state.employerName.trim(),
        occupationId: state.employmentStatus.trim(),
        occupationText: state.employmentStatuses
            .where((element) => element.id == state.employmentStatus)
            .first
            .name,
        netMonthlyIncome: state.monthlyIncome.trim(),
        workSectorText: state.workSectors
            .where((element) => element.id == state.workSector)
            .first
            .name,
        workSector: state.workSector.trim(),
        startMonth: state.startDate.trim().split('/')[1],
        startYear: state.startDate.trim().split('/')[0],
        educationQualification: state.levelOfEducation.trim(),
      );

      request = request.copyWith.education(
        educationalQualification: state.levelOfEducation.trim(),
      );

      failureOrSuccess = await _userRepo.saveUserData(request);
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      submitFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }

  Future<void> submitEmploymentForm() async {
    final isEmploymentStatusValid = state.employmentStatus.isNotEmpty;
    final isWorkSectorValid = state.workSector.isNotEmpty;
    final isEmployerNameValid = state.employerName.isNotEmpty;
    final isStartDateValid = state.startDate.isNotEmpty;
    final isMonthlyIncomeValid = state.monthlyIncome.isNotEmpty;

    Either<Glitch, Unit> failureOrSuccess;
    if (isEmploymentStatusValid &&
        isWorkSectorValid &&
        isEmployerNameValid &&
        isStartDateValid &&
        isMonthlyIncomeValid) {
      emit(state.copyWith(
        isSubmitting: true,
        submitFailureOrSuccess: None(),
      ));

      UserDetailsRequest request;
      request = state.userDetails.copyWith.work(
        employer: state.employerName.trim(),
        occupationId: state.employmentStatus.trim(),
        occupationText: state.employmentStatuses
            .where((element) => element.id == state.employmentStatus)
            .first
            .name,
        netMonthlyIncome: state.monthlyIncome.trim(),
        workSectorText: state.workSectors
            .where((element) => element.id == state.workSector)
            .first
            .name,
        workSector: state.workSector.trim(),
        workStartDate: state.startDate.trim(),
        startMonth: state.startDate.trim().split('/')[1],
        startYear: state.startDate.trim().split('/')[0],
        educationQualification: state.levelOfEducation.trim(),
      );

      failureOrSuccess = await _userRepo.saveUserData(request);
      await failureOrSuccess.fold(
        (l) => null,
        (r) async =>
            await _userRepo.updateUserDataLocal(isEduAndEmpInfoFilled: true),
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      isEdited: false,
      submitFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
