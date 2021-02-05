import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lsi_mobile/core/models/dto/schedule/schedule.dart';
import 'package:lsi_mobile/core/repositories/loan/loan_repo.dart';

part 'loan_schedule_cubit.freezed.dart';

part 'loan_schedule_state.dart';

@lazySingleton
class LoanScheduleCubit extends Cubit<LoanScheduleState> {
  final LoanRepo _loanRepo;

  LoanScheduleCubit(this._loanRepo) : super(Initial());

  Future<void> getLoanSchedule(String requestId) async {
    emit(Loading());

    var result = await _loanRepo.getLoanSchedule(requestId);

    result.fold(
      (l) => emit(Error(l.message)),
      (r) => emit(Loaded(schedule: r)),
    );
  }
}
