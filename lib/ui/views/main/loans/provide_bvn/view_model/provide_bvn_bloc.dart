import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'provide_bvn_bloc.freezed.dart';

part 'provide_bvn_event.dart';

part 'provide_bvn_state.dart';

class ProvideBvnBloc extends Bloc<ProvideBvnEvent, ProvideBvnState> {
  ProvideBvnBloc() : super(ProvideBvnState.initial());

  @override
  Stream<ProvideBvnState> mapEventToState(
    ProvideBvnEvent event,
  ) async* {
    yield* event.map(
      checkBVN: (value) async* {
        yield state.copyWith(
          provideBVNFailureOrSuccess: optionOf(Right(unit)),
        );
      },
      verifyBVN: (value) async* {
        yield state.copyWith(
          verifyBVNFailureOrSuccess: optionOf(Right(unit)),
        );
      },
    );
  }
}
