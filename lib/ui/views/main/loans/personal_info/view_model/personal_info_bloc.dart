import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'personal_info_bloc.freezed.dart';

part 'personal_info_event.dart';

part 'personal_info_state.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc() : super(PersonalInfoState.initial());

  @override
  Stream<PersonalInfoState> mapEventToState(
    PersonalInfoEvent event,
  ) async* {
    yield* event.map(
      submitPersonalInfo: (value) async* {
        yield state.copyWith(
          submitFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
