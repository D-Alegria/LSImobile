import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/education/education.dart';
import 'package:lsi_mobile/core/models/dto/home_address/home_address.dart';
import 'package:lsi_mobile/core/models/dto/next_of_kin/next_of_kin.dart';
import 'package:lsi_mobile/core/models/dto/user_details_profile/profile.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/enums/drop_down_menu.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/core/models/requests/user_details/user_details_request.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'loan_details_cubit.freezed.dart';

part 'loan_details_state.dart';

@lazySingleton
class LoanDetailsCubit extends Cubit<LoanDetailsState> {
  final UserRepo _userRepo;

  LoanDetailsCubit(this._userRepo) : super(LoanDetailsState.initial());

  Future<void> init() async {
    emit(state.copyWith(isSubmitting: true));

    UserDetailsRequest user;
    await _userRepo.userData().then(
          (value) => value.fold(
            (l) => null,
            (r) => user = r.userData.data,
          ),
        );

    final reasons =
        await _userRepo.getDropDownOptions(DropDownMenu.LoanPurpose);

    reasons.fold(
      (l) => print(l.message),
      (r) => emit(state.copyWith(reasons: r)),
    );

    emit(state.copyWith(
      data: user,
      reason: state.reasons.first.id,
      isSubmitting: false,
    ));
  }

  void amountChanged(double amount) => emit(state.copyWith(
        amount: amount,
        submitLoanDetailsFailureOrSuccess: None(),
      ));

  void reasonChanged(String reason) => emit(state.copyWith(
        reason: reason,
        submitLoanDetailsFailureOrSuccess: None(),
      ));

  void timeChanged(String time) => emit(state.copyWith(
        time: time,
        submitLoanDetailsFailureOrSuccess: None(),
      ));

  void submitLoanDetailsForm() {
    print('begin');
    final isTimeValid = state.time.isNotEmpty;
    final isReasonValid = state.reason.isNotEmpty;

    Either<Glitch, Unit> failureOrSuccess =
        left(ServerGlitch(message: "Error validating details"));
    LoanRequest request = LoanRequest();

    if (isTimeValid && isReasonValid) {
      print('verified');
      emit(state.copyWith(
        isSubmitting: true,
        submitLoanDetailsFailureOrSuccess: None(),
      ));

      print('sending');

      Profile profile = state.data.profile.copyWith(
        profileImage: state.data.profile.fileName,
      );

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

      Request r = Request(amount: state.amount.toString(), tenor: state.time);

      request = request.copyWith(
        profile: profile,
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
        request: r,
      );

      failureOrSuccess = right(unit);
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      loanRequest: request,
      submitLoanDetailsFailureOrSuccess: optionOf(failureOrSuccess),
    ));
  }
}
