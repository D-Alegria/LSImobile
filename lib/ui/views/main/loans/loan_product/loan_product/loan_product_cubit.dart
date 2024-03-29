import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/responses/user_details/user_details_data.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:meta/meta.dart';

part 'loan_product_cubit.freezed.dart';

part 'loan_product_state.dart';

@lazySingleton
class LoanProductCubit extends Cubit<LoanProductState> {
  final LoanRepo _loanRepo;
  final UserRepo _userRepo;
  List<LoanProduct> loanProducts;

  LoanProductCubit(this._loanRepo, this._userRepo)
      : super(LoanProductState.initial());

  Future<void> getLoanProducts() async {
    emit(Loading());

    var result = await _loanRepo.loanProducts;
    result.fold((l) => emit(Error(l.message)), (r) {
      loanProducts = r;
      emit(Loaded(loanProducts: r, nextForm: null));
    });
  }

  Future<void> navigateToForm(
      BuildContext context, UserDetailsData data, int selected) async {
    emit(Loading());

    final result = await _userRepo.user;

    return result.fold(
      (l) => emit(Error(l.message)),
      (user) {
        if (!data.validations.bvn) {
          return emit(Loaded(
            loanProducts: loanProducts,
            nextForm: NextForm.bvn,
            selected: selected,
          ));
        } else if (!(user.isPersonalInfoFilled ?? false)) {
          return emit(Loaded(
            loanProducts: loanProducts,
            nextForm: NextForm.personalInfo,
            selected: selected,
          ));
        } else if (!(user.isEmergenceContactFilled ?? false)) {
          return emit(Loaded(
            loanProducts: loanProducts,
            nextForm: NextForm.emergencyContact,
            selected: selected,
          ));
        } else if (!(user.isEduAndEmpInfoFilled ?? false)) {
          return emit(Loaded(
            loanProducts: loanProducts,
            nextForm: NextForm.eduAndEmploy,
            selected: selected,
          ));
        } else if (!(user.isResidenceFilled ?? false)) {
          return emit(Loaded(
            loanProducts: loanProducts,
            nextForm: NextForm.residence,
            selected: selected,
          ));
        } else {
          return emit(Loaded(
            loanProducts: loanProducts,
            nextForm: NextForm.loanDetails,
            selected: selected,
          ));
        }
      },
    );
  }
}
