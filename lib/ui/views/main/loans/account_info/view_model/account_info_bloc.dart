import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'account_info_bloc.freezed.dart';

part 'account_info_event.dart';

part 'account_info_state.dart';

class AccountInfoBloc extends Bloc<AccountInfoEvent, AccountInfoState> {
  AccountInfoBloc() : super(AccountInfoState.initial());

  @override
  Stream<AccountInfoState> mapEventToState(
    AccountInfoEvent event,
  ) async* {
    yield* event.map(
      submitAccountInfoForm: (value) async* {
        yield state.copyWith(
          submitAccountInfoFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
