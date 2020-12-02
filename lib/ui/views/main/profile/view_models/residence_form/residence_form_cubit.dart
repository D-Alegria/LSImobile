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

part 'residence_form_cubit.freezed.dart';

part 'residence_form_state.dart';

@lazySingleton
class ResidenceFormCubit extends Cubit<ResidenceFormState> {
  final UserRepo _userRepo;

  ResidenceFormCubit(this._userRepo) : super(ResidenceFormState.initial());

  Future<void> init(UserDetailsRequest user) async {
    emit(state.copyWith(
      isSubmitting: true,
      submitResidenceFailureOrSuccess: None(),
    ));

    List<Either<Glitch, List<Value>>> responses = await Future.wait([
      _userRepo.getDropDownOptions(DropDownMenu.ResidenceTypes),
      _userRepo.getDropDownOptions(DropDownMenu.States),
    ]);

    emit(state.copyWith(
      userDetails: user,
      currentAddress: user.homeAddress.homeAddress ?? '',
      stayPeriod: user.homeAddress.timeAtCurrentAddress ?? '',
    ));

    responses[0].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(residences: success)),
    );

    responses[1].fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(states: success)),
    );

    final states = nullCheck(user.homeAddress.homeState, state.states) ??
        state.states.first.id;
    final lgas =
        await _userRepo.getDropDownOptions(DropDownMenu.Lgas, lga: states);
    lgas.fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(lgas: success)),
    );

    emit(state.copyWith(
      typeOfResidence:
          nullCheck(user.homeAddress.natureOfAccommodation, state.residences) ??
              state.residences.first.id,
      state: nullCheck(user.homeAddress.homeState, state.states) ??
          state.states.first.id,
      lga: nullCheck(user.homeAddress.homeLga, state.lgas) ??
          state.lgas.first.id,
      isSubmitting: false,
    ));
  }

  void typeOfResidenceChanged(String residence) {
    emit(state.copyWith(
      typeOfResidence: residence,
      isEdited: true,
      submitResidenceFailureOrSuccess: None(),
    ));
  }

  void currentAddressChanged(String address) {
    emit(state.copyWith(
      currentAddress: address,
      isEdited: true,
      submitResidenceFailureOrSuccess: None(),
    ));
  }

  Future<void> stateChanged(String states) async {
    emit(state.copyWith(
      isSubmitting: true,
      submitResidenceFailureOrSuccess: None(),
    ));

    final lgas =
        await _userRepo.getDropDownOptions(DropDownMenu.Lgas, lga: states);
    lgas.fold(
      (failure) => print(failure.message),
      (success) => emit(state.copyWith(lgas: success)),
    );

    emit(state.copyWith(
      state: states,
      isSubmitting: false,
      lga: nullCheck(state.userDetails.homeAddress.homeLga, state.lgas) ??
          state.lgas.first.id,
      isEdited: true,
      submitResidenceFailureOrSuccess: None(),
    ));
  }

  void lgaChanged(String lga) {
    emit(state.copyWith(
      lga: lga,
      isEdited: true,
      submitResidenceFailureOrSuccess: None(),
    ));
  }

  void stayPeriodChanged(String period) {
    emit(state.copyWith(
      stayPeriod: period,
      isEdited: true,
      submitResidenceFailureOrSuccess: None(),
    ));
  }

  Future<void> submitResidenceForm({bool isEditProfile = true}) async {
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
      emit(state.copyWith(
        isSubmitting: true,
        submitResidenceFailureOrSuccess: None(),
      ));

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
        homeLgaText:
            state.lgas.where((element) => element.id == state.lga).first.name,
        residentYears: state.stayPeriod.trim(),
      );

      failureOrSuccess = await _userRepo.saveUserDataRemote(request);
      if (!isEditProfile) {
        await failureOrSuccess.fold(
          (l) => null,
          (r) async =>
              await _userRepo.updateUserDataLocal(isResidenceFilled: true),
        );
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      isEdited: false,
      submitResidenceFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
