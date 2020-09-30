import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'residence_event.dart';
part 'residence_state.dart';
part 'residence_bloc.freezed.dart';

class ResidenceBloc extends Bloc<ResidenceEvent, ResidenceState> {
  ResidenceBloc() : super(ResidenceState.initial());

  @override
  Stream<ResidenceState> mapEventToState(
    ResidenceEvent event,
  ) async* {
    yield* event.map(
      submitResidenceForm: (value) async* {
        yield state.copyWith(
          submitResidenceFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
