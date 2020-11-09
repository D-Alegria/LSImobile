import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'new_investment_event.dart';
part 'new_investment_state.dart';

@lazySingleton
class NewInvestmentBloc extends Bloc<NewInvestmentEvent, NewInvestmentState> {
  NewInvestmentBloc() : super(NewInvestmentInitial());

  @override
  Stream<NewInvestmentState> mapEventToState(
    NewInvestmentEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
