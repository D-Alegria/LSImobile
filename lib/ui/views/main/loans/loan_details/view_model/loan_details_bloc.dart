import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/education/education.dart';
import 'package:lsi_mobile/core/models/dto/home_address/home_address.dart';
import 'package:lsi_mobile/core/models/dto/next_of_kin/next_of_kin.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:meta/meta.dart';

part 'loan_details_bloc.freezed.dart';

part 'loan_details_event.dart';

part 'loan_details_state.dart';

@lazySingleton
class LoanDetailsBloc extends Bloc<LoanDetailsEvent, LoanDetailsState> {
  final UserRemoteDataSource _userRemoteDataSource;

  LoanDetailsBloc(this._userRemoteDataSource)
      : super(LoanDetailsState.initial());

  @override
  Stream<LoanDetailsState> mapEventToState(
    LoanDetailsEvent event,
  ) async* {
    yield* event.map(
      submitLoanDetailsForm: (value) async* {
        print('begin');
        final isAmountValid = state.amount.isNotEmpty;
        final isTimeValid = state.time.isNotEmpty;
        final isReasonValid = state.reason.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess =
            left(ServerGlitch(message: "Error validating details"));
        LoanRequest request = LoanRequest();

        if (isAmountValid && isTimeValid && isReasonValid) {
          print('verified');
          yield state.copyWith(
            isSubmitting: true,
            submitLoanDetailsFailureOrSuccess: None(),
          );

          print('sending');

          NextOfKin nextOfKin = state.data.nextOfKin.copyWith(
            fullName: state.data.nextOfKin.nokName,
            email: state.data.nextOfKin.nokEmail,
            phone: state.data.nextOfKin.nokPhone,
            address: state.data.nextOfKin.nokAddress,
            relationship: state.data.nextOfKin.nokRelationship,
          );

          HomeAddress address = state.data.homeAddress.copyWith(
            stateId: state.data.homeAddress.homeState,
            address: state.data.homeAddress.homeAddress,
            typeOfResidence: state.data.homeAddress.natureOfAccommodation,
            lgaId: state.data.homeAddress.homeLga,
            monthlyRentExpenses: "",
            numberOfYears: state.data.homeAddress.timeAtCurrentAddress,
          );

          Education education = state.data.education.copyWith(
            institution: state.data.education.educationalInstitution,
            qualification: state.data.education.educationalQualification,
            others: state.data.education.hasOtherQualifications,
          );

          request = request.copyWith(
            profile: state.data.profile,
            nextOfKin: nextOfKin,
            homeAddress: address,
            education: education,
            expenses: state.data.expenses,
            idCard: state.data.idCard,
            work: state.data.work,
            companyProfile: state.data.companyProfile,
            directors: state.data.directors,
            businessAddress: state.data.businessAddress,
            businessIncome: state.data.businessIncome,
            operatingExpenses: state.data.operatingExpenses,
          );

          failureOrSuccess = right(unit);
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          loanRequest: request,
          submitLoanDetailsFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      timeChanged: (e) async* {
        yield state.copyWith(
          time: e.time,
          submitLoanDetailsFailureOrSuccess: None(),
        );
      },
      reasonChanged: (e) async* {
        yield state.copyWith(
          reason: e.reason,
          submitLoanDetailsFailureOrSuccess: None(),
        );
      },
      amountChanged: (e) async* {
        yield state.copyWith(
          amount: e.amount,
          submitLoanDetailsFailureOrSuccess: None(),
        );
      },
      init: (e) async* {
        yield state.copyWith(isSubmitting: true);
        final reasons = await _userRemoteDataSource.loanPurpose;

        yield* reasons.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(reasons: r);
          },
        );

        yield state.copyWith(
          data: e.data,
          reason: state.reasons.first.id,
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
