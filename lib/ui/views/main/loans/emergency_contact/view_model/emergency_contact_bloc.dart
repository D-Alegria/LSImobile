import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'emergency_contact_bloc.freezed.dart';
part 'emergency_contact_event.dart';
part 'emergency_contact_state.dart';

class EmergencyContactBloc extends Bloc<EmergencyContactEvent, EmergencyContactState> {
  EmergencyContactBloc() : super(EmergencyContactState.initial());

  @override
  Stream<EmergencyContactState> mapEventToState(
    EmergencyContactEvent event,
  ) async* {
    yield* event.map(
      submitEmergencyContactForm: (value) async* {
        yield state.copyWith(
          submitFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
