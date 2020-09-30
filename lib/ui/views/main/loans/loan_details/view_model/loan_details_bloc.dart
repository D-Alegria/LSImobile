import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'loan_details_bloc.freezed.dart';

part 'loan_details_event.dart';

part 'loan_details_state.dart';

class LoanDetailsBloc extends Bloc<LoanDetailsEvent, LoanDetailsState> {
  LoanDetailsBloc() : super(LoanDetailsState.initial());

  @override
  Stream<LoanDetailsState> mapEventToState(
    LoanDetailsEvent event,
  ) async* {
    yield* event.map(
      submitLoanDetailsForm: (value) async* {
        yield state.copyWith(
          submitLoanDetailsFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
