part of 'loan_schedule_cubit.dart';

@freezed
abstract class LoanScheduleState with _$LoanScheduleState {
  factory LoanScheduleState.initial() = Initial;

  factory LoanScheduleState.loading() = Loading;

  factory LoanScheduleState.loaded({
    List<Schedule> schedule,
  }) = Loaded;

  factory LoanScheduleState.error(String message) = Error;
}
