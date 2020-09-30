part of 'account_info_bloc.dart';

@freezed
abstract class AccountInfoState with _$AccountInfoState {
  const factory AccountInfoState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> submitAccountInfoFailureOrSuccess,
  }) = _AccountInfoState;

  factory AccountInfoState.initial() => AccountInfoState(
    showErrorMessages: false,
    isSubmitting: false,
    submitAccountInfoFailureOrSuccess: None(),
  );
}