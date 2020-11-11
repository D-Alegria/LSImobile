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

part 'emergency_contact_bloc.freezed.dart';

part 'emergency_contact_event.dart';

part 'emergency_contact_state.dart';

@lazySingleton
class EmergencyContactBloc
    extends Bloc<EmergencyContactEvent, EmergencyContactState> {
  final UserRepo _userRepo;

  final UserRemoteDataSource _userRemoteDataSource;

  EmergencyContactBloc(this._userRepo, this._userRemoteDataSource)
      : super(EmergencyContactState.initial());

  @override
  Stream<EmergencyContactState> mapEventToState(
    EmergencyContactEvent event,
  ) async* {
    yield* event.map(
      submitEmergencyContactForm: (value) async* {
        print('begin');
        final isFirstNameValid = state.firstName.isNotEmpty;
        final isLastNameValid = state.lastName.isNotEmpty;
        final isEmailValid = state.email.isEmail;
        final isPhoneValid = state.phone.isNotEmpty;
        final isRelationShipValid = state.relationShip.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isFirstNameValid &&
            isLastNameValid &&
            isEmailValid &&
            isPhoneValid &&
            isRelationShipValid) {
          print('verified');
          yield state.copyWith(
            isSubmitting: true,
            submitFailureOrSuccess: None(),
          );
          UserDetailsRequest request;
          request = state.userDetails.copyWith.nextOfKin(
            nokName: state.firstName + " " + state.lastName,
            nokEmail: state.email,
            nokPhone: state.phone,
            nokRelationship: state.relationShip,
          );

          print('$request\n\n');

          print('sending');

          failureOrSuccess = await _userRepo.saveUserDataRemote(request);
          await failureOrSuccess.fold(
            (l) => null,
            (r) async => await _userRepo.updateUserDataLocal(
              isEmergenceContactFilled: true,
            ),
          );
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      relationShipChanged: (e) async* {
        yield state.copyWith(
          relationShip: e.relationShip,
          submitFailureOrSuccess: None(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: e.firstName,
          submitFailureOrSuccess: None(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phone: e.phone,
          submitFailureOrSuccess: None(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          submitFailureOrSuccess: None(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: e.lastName,
          submitFailureOrSuccess: None(),
        );
      },
      init: (e) async* {
        yield state.copyWith(isSubmitting: true);
        // final relationShips = await _userRemoteDataSource.;
        await Future.delayed(Duration(seconds: 1));

        yield state.copyWith(
          userDetails: e.data,
          firstName: e.data.nextOfKin.nokName.split(' ')[0] ?? '',
          lastName: e.data.nextOfKin.nokName.split(' ').length > 1
              ? e.data.nextOfKin.nokName.split(' ')[1]
              : '',
          email: e.data.nextOfKin.nokEmail ?? '',
          phone: e.data.nextOfKin.nokPhone ?? '',
          relationShips: [
            Value(id: "0", name: "Father"),
            Value(id: "1", name: "Mother"),
            Value(id: "2", name: "Brother"),
            Value(id: "3", name: "Uncle"),
            Value(id: "4", name: "Sister"),
            Value(id: "5", name: "Nephew"),
            Value(id: "6", name: "Niece"),
          ],
        );

        // yield* relationShips.fold(
        //       (l) async* {
        //     print(l.message);
        //   },
        //       (r) async* {
        //     yield state.copyWith(relationShips: r);
        //   },
        // );
        await Future.delayed(Duration(seconds: 1));

        yield state.copyWith(
          relationShip: nullCheck(
                  e.data.nextOfKin.nokRelationship, state.relationShips) ??
              state.relationShips.first.id,
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
