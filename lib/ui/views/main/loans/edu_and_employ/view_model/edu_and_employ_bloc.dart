import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lsi_mobile/core/exceptions/value_failure.dart';
import 'package:meta/meta.dart';

part 'edu_and_employ_bloc.freezed.dart';
part 'edu_and_employ_event.dart';
part 'edu_and_employ_state.dart';

class EduAndEmployBloc extends Bloc<EduAndEmployEvent, EduAndEmployState> {
  EduAndEmployBloc() : super(EduAndEmployState.initial());

  @override
  Stream<EduAndEmployState> mapEventToState(
    EduAndEmployEvent event,
  ) async* {
    yield* event.map(
      submitEduAndEmploy: (value) async* {
        yield state.copyWith(
          submitFailureOrSuccess: optionOf(right(unit)),
        );
      },
    );
  }
}
