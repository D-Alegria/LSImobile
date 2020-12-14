import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/core/utils/function_util.dart';
import 'package:meta/meta.dart';

part 'emergency_contact_form_cubit.freezed.dart';

part 'emergency_contact_form_state.dart';

@lazySingleton
class EmergencyContactFormCubit extends Cubit<EmergencyContactFormState> {
  final UserRepo _userRepo;

  EmergencyContactFormCubit(this._userRepo)
      : super(EmergencyContactFormState.initial());

  Future<void> init() async {
    emit(state.copyWith(
      isSubmitting: true,
      submitFailureOrSuccess: None(),
    ));

    List<Value> relationShips = [
      Value(id: "0", name: "Father"),
      Value(id: "1", name: "Mother"),
      Value(id: "2", name: "Brother"),
      Value(id: "3", name: "Uncle"),
      Value(id: "4", name: "Sister"),
      Value(id: "5", name: "Nephew"),
      Value(id: "6", name: "Niece"),
    ];

    UserDetailsRequest user;
    await _userRepo.userData().then(
          (value) => value.fold(
            (l) => null,
            (r) => user = r.userData.data,
          ),
        );

    emit(state.copyWith(
      submitFailureOrSuccess: None(),
      userDetails: user,
      fullName: user.nextOfKin.nokName ?? '',
      email: user.nextOfKin.nokEmail ?? '',
      phone: user.nextOfKin.nokPhone ?? '',
      relationShips: relationShips,
      relationShip:
          nullCheck(user.nextOfKin.nokRelationship, state.relationShips) ??
              state.relationShips.first.id,
      isSubmitting: false,
    ));
  }

  void fullNameChanged(String fullName) {
    emit(state.copyWith(
      fullName: fullName,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void emailChanged(String email) {
    emit(state.copyWith(
      email: email,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void phoneNumberChanged(String phone) {
    emit(state.copyWith(
      phone: phone,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  void relationShipChanged(String relationShip) {
    emit(state.copyWith(
      relationShip: relationShip,
      isEdited: true,
      submitFailureOrSuccess: None(),
    ));
  }

  Future<void> submitEmergencyContactForm({bool isEditProfile = true}) async {
    final isFullNameValid = state.fullName.isNotEmpty;
    final isEmailValid = state.email.isEmail;
    final isPhoneValid = state.phone.isNotEmpty;
    final isRelationShipValid = state.relationShip.isNotEmpty;

    Either<Glitch, Unit> failureOrSuccess;
    if (isFullNameValid &&
        isEmailValid &&
        isPhoneValid &&
        isRelationShipValid) {
      emit(state.copyWith(
        isSubmitting: true,
        submitFailureOrSuccess: None(),
      ));

      UserDetailsRequest request;
      request = state.userDetails.copyWith.nextOfKin(
        nokName: state.fullName.trim(),
        nokEmail: state.email.trim(),
        nokPhone: state.phone.trim(),
        nokRelationship: state.relationShip.trim(),
      );

      failureOrSuccess = await _userRepo.saveUserData(request);
      if (!isEditProfile) {
        await failureOrSuccess.fold(
          (l) => null,
          (r) async => await _userRepo.updateUserDataLocal(
            isEmergenceContactFilled: true,
          ),
        );
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      isEdited: false,
      submitFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
