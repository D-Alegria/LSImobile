import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/enums/drop_down_menu.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';
import 'package:meta/meta.dart';

part 'personal_info_form_cubit.freezed.dart';

part 'personal_info_form_state.dart';

@lazySingleton
class PersonalInfoFormCubit extends Cubit<PersonalInfoFormState> {
  final UserRepo _userRepo;

  PersonalInfoFormCubit(this._userRepo)
      : super(PersonalInfoFormState.initial());

  Future<void> init(UserDetailsRequest user) async {
    emit(state.copyWith(
      isSubmitting: true,
      submitFailureOrSuccess: None(),
    ));

    List<Either<Glitch, List<Value>>> responses = await Future.wait([
      _userRepo.getDropDownOptions(DropDownMenu.Gender),
      _userRepo.getDropDownOptions(DropDownMenu.MaritalStatuses),
    ]);

    emit(state.copyWith(
      userDetails: user,
      fullName: user.profile.legalName ?? '',
      dateOfBirth: user.profile.dateOfBirth ?? '',
      phoneNumber: user.profile.phone ?? '',
      emailAddress: user.profile.email ?? '',
    ));

    responses[0].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(genders: success)),
    );

    responses[1].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(maritalStatuses: success)),
    );

    emit(state.copyWith(
      gender: nullCheck(user.profile.gender, state.genders) ??
          state.genders.first.id,
      maritalStatus:
          nullCheck(user.profile.maritalStatus, state.maritalStatuses) ??
              state.maritalStatuses.first.id,
      isSubmitting: false,
    ));
  }

  void emailChanged(String email) {
    emit(state.copyWith(
      emailAddress: email,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void fullNameChanged(String fullName) {
    emit(state.copyWith(
      fullName: fullName,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void phoneNumberChanged(String phoneNumber) {
    emit(state.copyWith(
      phoneNumber: phoneNumber,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void genderChanged(String gender) {
    emit(state.copyWith(
      gender: gender,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void dateOfBirthChanged(String dateOfBirth) {
    emit(state.copyWith(
      dateOfBirth: dateOfBirth,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void maritalStatusChanged(String maritalStatus) {
    emit(state.copyWith(
      maritalStatus: maritalStatus,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  Future<void> submitPersonalInfoForm({bool isEditProfile = true}) async {
    final isFullNameValid = state.fullName.isNotEmpty;
    final isGenderValid = state.gender.isNotEmpty;
    final isEmailValid = state.emailAddress.isEmail;
    final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
    final isDateOfBirthValid = state.dateOfBirth.isNotEmpty;
    final isMartialStatusValid = state.maritalStatus.isNotEmpty;

    Either<Glitch, Unit> failureOrSuccess;
    if (isFullNameValid &&
        isPhoneNumberValid &&
        isEmailValid &&
        isGenderValid &&
        isDateOfBirthValid &&
        isMartialStatusValid) {
      emit(state.copyWith(
        isSubmitting: true,
        submitFailureOrSuccess: None(),
      ));

      UserDetailsRequest request = state.userDetails.copyWith.profile(
        legalName: state.fullName.trim(),
        email: state.emailAddress.trim(),
        phone: state.phoneNumber.trim(),
        dateOfBirth: state.dateOfBirth.trim(),
        birthYear: state.dateOfBirth.trim().split('-')[0],
        birthMonth: state.dateOfBirth.trim().split('-')[1],
        birthDay: state.dateOfBirth.trim().split('-')[2],
        gender: state.gender.trim(),
        maritalStatus: state.maritalStatus.trim(),
      );

      failureOrSuccess = await _userRepo.saveUserDataRemote(request);
      if (!isEditProfile) {
        await failureOrSuccess.fold(
          (l) => null,
          (r) async =>
              await _userRepo.updateUserDataLocal(isPersonalInfoFilled: true),
        );
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      isEdited:false,
      submitFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
