import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/enums/drop_down_menu.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/repositories/bank/bank_repo.dart';
import 'package:lsi_mobile/core/repositories/user/user_repo.dart';
import 'package:lsi_mobile/ui/views/authentication/view_model/authentication/authentication_bloc.dart';
import 'package:meta/meta.dart';

part 'add_account_form_cubit.freezed.dart';

part 'add_account_form_state.dart';

@lazySingleton
class AddAccountFormCubit extends Cubit<AddAccountFormState> {
  final UserRepo _userRepo;
  final BankRepo _bankRepo;

  AddAccountFormCubit(this._userRepo, this._bankRepo)
      : super(AddAccountFormState.initial());

  Future<void> init() async {
    emit(
      state.copyWith(
        isSubmitting: true,
        verifyAccountInfoFailureOrSuccess: None(),
        addAccountInfoFailureOrSuccess: None(),
      ),
    );

    try {
      final banks = await _userRepo.getDropDownOptions(DropDownMenu.Banks);
      banks.fold(
        (l) => emit(
          state.copyWith(
              verifyAccountInfoFailureOrSuccess: optionOf(
            left(SystemGlitch(message: l.message)),
          )),
        ),
        (r) => emit(state.copyWith(
          banks: r,
          bankName: r.first.id,
        )),
      );
    } on Error {}
    emit(state.copyWith(
      isSubmitting: false,
    ));
  }

  void changeBankName(String bankName) {
    emit(
      state.copyWith(
        bankName: bankName,
        addAccountInfoFailureOrSuccess: None(),
        verifyAccountInfoFailureOrSuccess: None(),
      ),
    );
  }

  void changeAccountNumber(String accountNumber) {
    emit(
      state.copyWith(
        accountNumber: accountNumber,
        addAccountInfoFailureOrSuccess: None(),
        verifyAccountInfoFailureOrSuccess: None(),
      ),
    );
  }

  Future<void> verifyAccountNumber() async {
    try {
      final isBankNameValid = state.bankName.isNotEmpty;
      final isAccountNumberValid = state.accountNumber.isNotEmpty;
      Either<Glitch, Unit> failureOrSuccess;

      if (isBankNameValid && isAccountNumberValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            verifyAccountInfoFailureOrSuccess: None(),
            addAccountInfoFailureOrSuccess: None(),
          ),
        );

        final result = await _bankRepo.resolveBankAccount(
          ResolveAccountRequest(
            accountNumber: state.accountNumber,
            bankCode: state.banks
                .where((element) => element.id == state.bankName)
                .first
                .bankCode,
          ),
        );

        result.fold(
          (l) {
            failureOrSuccess = left(SystemGlitch(message: l.message));
          },
          (r) {
            emit(
              state.copyWith(
                accountName: r.data.accountName,
              ),
            );
          },
        );
      }

      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        verifyAccountInfoFailureOrSuccess: optionOf(failureOrSuccess),
      ));
    } on Error catch (e) {
      print(e);
    }
  }

  Future<void> addAccount() async {
    try {
      final isBankNameValid = state.bankName.isNotEmpty;
      final isAccountNumberValid = state.accountNumber.isNotEmpty;
      Either<Glitch, Unit> failureOrSuccess;

      if (isBankNameValid && isAccountNumberValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            verifyAccountInfoFailureOrSuccess: None(),
            addAccountInfoFailureOrSuccess: None(),
          ),
        );

        failureOrSuccess = await _bankRepo.saveBankAccount(
          bankId: state.bankName,
          accountNumber: state.accountNumber,
          accountName: state.accountName,
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          addAccountInfoFailureOrSuccess: optionOf(failureOrSuccess),
        ),
      );
    } on Error catch (e) {
      print(e);
    }
  }

  void reset() {
    emit(AddAccountFormState.initial());
  }
}
