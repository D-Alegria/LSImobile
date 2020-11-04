import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
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
      emit(Loaded(loanProducts: r));
    });
  }

  Future<void> navigateToForm(BuildContext context) async {
    emit(Loading());

    var result = await _userRepo.userDataRemote;
    var user = await _userRepo.user;

    result.fold((l) => emit(Error(l.message)), (r) {
      if (!r.validations.bvn) {
        emit(Loaded(loanProducts: loanProducts, nextForm: NextForm.bvn));
      } else if (!user.isPersonalInfoFilled) {
        emit(Loaded(loanProducts: loanProducts, nextForm: NextForm.personalInfo));
      } else if (!user.isEmergenceContactFilled) {
        emit(Loaded(loanProducts: loanProducts, nextForm: NextForm.personalInfo));
      } else if (!user.isEduAndEmpInfoFilled) {
        emit(Loaded(loanProducts: loanProducts, nextForm: NextForm.eduAndEmploy));
      } else if (!user.isResidenceFilled) {
        emit(Loaded(loanProducts: loanProducts, nextForm: NextForm.residence));
      } else {
        emit(Loaded(loanProducts: loanProducts, nextForm: NextForm.loanDetails));
      }
    });
  }
}
