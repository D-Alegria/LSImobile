import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'register_bloc.freezed.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      registerUser: (value) async* {
        yield state.copyWith(
          registerFailureOrSuccess: optionOf(right(unit)),
        );
      },
      verifyUser: (value) async* {
        yield state.copyWith(
          verifyFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
