import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/auth_glitch.dart';
import 'package:lsi_mobile/core/extensions/string_extension.dart';
import 'package:lsi_mobile/core/models/requests/register_user/profile.dart';
import 'package:lsi_mobile/core/models/requests/register_user/register_user_request.dart';
import 'package:lsi_mobile/core/services/auth_service/auth_service.dart';
import 'package:meta/meta.dart';

part 'register_bloc.freezed.dart';

part 'register_event.dart';

part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthService _authService;

  RegisterBloc(this._authService) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      registerUser: (value) async* {
        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isPhoneNumberValid = state.phoneNumber.isNotEmpty;
        final isEmailAddressValid = state.emailAddress.isNotEmpty;
        final isPasswordValid = state.password.isValidPassword;

        Either<AuthGlitch, Unit> failureOrSuccess;

        if (isFirstNameValid &&
            isLastNameValid &&
            isPhoneNumberValid &&
            isEmailAddressValid &&
            isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            registerFailureOrSuccess: None(),
          );

          failureOrSuccess = await _authService.register(
            RegisterUserRequest(
              profile: Profile(
                password: state.password.trim(),
                email: state.emailAddress.trim(),
                fullName: state.firstName.trim() + " " + state.lastName.trim(),
                isIndividual: "",
                phone: state.phoneNumber.trim(),
              ),
            ),
          );
        }

        yield state.copyWith(
          isSubmitting: true,
          showErrorMessages: true,
          registerFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      verifyUser: (value) async* {
        yield state.copyWith(
          verifyFailureOrSuccess: optionOf(right(unit)),
        );
      },
      emailChanged: (value) async* {
        yield state.copyWith(
          emailAddress: value.email,
          registerFailureOrSuccess: None(),
        );
      },
      lastNameChanged: (LastNameChanged value) async* {
        yield state.copyWith(
          lastName: value.lastName,
          registerFailureOrSuccess: None(),
        );
      },
      passwordChanged: (PasswordChanged value) async* {
        yield state.copyWith(
          password: value.password,
          registerFailureOrSuccess: None(),
        );
      },
      firstNameChanged: (FirstNameChanged value) async* {
        yield state.copyWith(
          firstName: value.firstName,
          registerFailureOrSuccess: None(),
        );
      },
      phoneNumberChanged: (PhoneNumberChanged value) async* {
        yield state.copyWith(
          phoneNumber: value.phoneNumber,
          registerFailureOrSuccess: None(),
        );
      },
    );
  }
}
