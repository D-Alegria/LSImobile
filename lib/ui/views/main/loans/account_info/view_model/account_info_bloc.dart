import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/datasources/user/user_remote_datasource.dart';
import 'package:lsi_mobile/core/exceptions/glitch.dart';
import 'package:lsi_mobile/core/models/dto/loan_product/loan_product.dart';
import 'package:lsi_mobile/core/models/dto/value/value.dart';
import 'package:lsi_mobile/core/models/requests/loan_application/loan_request.dart';
import 'package:lsi_mobile/core/models/requests/resolve_account/resolve_account_request.dart';
import 'package:lsi_mobile/core/repositories/bank/bank_repo.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';
import 'package:meta/meta.dart';

part 'account_info_bloc.freezed.dart';

part 'account_info_event.dart';

part 'account_info_state.dart';

@lazySingleton
class AccountInfoBloc extends Bloc<AccountInfoEvent, AccountInfoState> {
  final UserRemoteDataSource _userRemoteDataSource;
  final BankRepo _bankRepo;
  final LoanRepo _loanRepo;

  AccountInfoBloc(this._userRemoteDataSource, this._bankRepo, this._loanRepo)
      : super(AccountInfoState.initial());

  @override
  Stream<AccountInfoState> mapEventToState(
    AccountInfoEvent event,
  ) async* {
    yield* event.map(
      submitAccountInfoForm: (value) async* {
        print('begin');
        final isBankNameValid = state.bankName.isNotEmpty;
        final isAccountNumberValid = state.accountNumber.isNotEmpty;

        Either<Glitch, Unit> failureOrSuccess;

        if (isBankNameValid && isAccountNumberValid) {
          print('verified');
          yield state.copyWith(
            isSubmitting: true,
            submitAccountInfoFailureOrSuccess: None(),
            applyForLoanFailureOrSuccess: None(),
          );

          print('sending');

          final result = await _bankRepo.resolveBankAccount(
            ResolveAccountRequest(
              accountNumber: state.accountNumber,
              bankCode: state.banks
                  .where((element) => element.id == state.bankName)
                  .first
                  .bankCode,
            ),
          );

          yield* result.fold(
            (l) async* {
              failureOrSuccess = left(SystemGlitch(message: l.message));
            },
            (r) async* {
              yield state.copyWith(
                accountName: r.data.accountName,
              );
            },
          );
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          submitAccountInfoFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      bankNameChanged: (e) async* {
        yield state.copyWith(
          bankName: e.bankName,
          submitAccountInfoFailureOrSuccess: None(),
          applyForLoanFailureOrSuccess: None(),
        );
      },
      accountNumberChanged: (e) async* {
        yield state.copyWith(
          accountNumber: e.accountNumber,
          submitAccountInfoFailureOrSuccess: None(),
          applyForLoanFailureOrSuccess: None(),
        );
      },
      init: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          loanRequest: e.request,
          loanProduct: e.loanProduct,
        );
        final banks = await _userRemoteDataSource.banks;

        yield* banks.fold(
          (l) async* {
            print(l.message);
          },
          (r) async* {
            yield state.copyWith(banks: r);
          },
        );

        yield state.copyWith(
          bankName: state.banks.first.id,
          isSubmitting: false,
        );
      },
      applyForLoan: (e) async* {
        print('begin');
        final isBankNameValid = state.bankName.isNotEmpty;
        final isAccountNumberValid = state.accountNumber.isNotEmpty;
        final isAccountNameValid = state.accountName.isNotEmpty;
        Either<Glitch, Unit> failureOrSuccess;

        if (isBankNameValid && isAccountNumberValid && isAccountNameValid) {
          print('verified');
          yield state.copyWith(
            isSubmitting: true,
            submitAccountInfoFailureOrSuccess: None(),
            applyForLoanFailureOrSuccess: None(),
          );

          print('sending');

          Account account = Account(
            id: state.bankName,
            accountNo: state.accountNumber,
            accountName: state.accountName,
            bvn: e.bvn,
          );

          Request r = state.loanRequest.request.copyWith(
            productId: state.loanProduct.loanProductId,
          );

          LoanRequest request = state.loanRequest.copyWith(
            account: account,
            request: r,
          );

          failureOrSuccess = await _loanRepo.applyForLoan(request);
        }

        print('done');

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          applyForLoanFailureOrSuccess: optionOf(failureOrSuccess),
          submitAccountInfoFailureOrSuccess: None(),
        );
      },
    );
  }
}
