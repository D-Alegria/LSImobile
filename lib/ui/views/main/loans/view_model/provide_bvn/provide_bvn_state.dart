part of 'provide_bvn_bloc.dart';

@freezed
abstract class ProvideBvnState with _$ProvideBvnState {
  const factory ProvideBvnState({
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ValueFailure, Unit>> provideBVNFailureOrSuccess,
    @required Option<Either<ValueFailure, Unit>> verifyBVNFailureOrSuccess,
  }) = _ProvideBvnState;

  factory ProvideBvnState.initial() => ProvideBvnState(
        showErrorMessages: false,
        isSubmitting: false,
        provideBVNFailureOrSuccess: None(),
        verifyBVNFailureOrSuccess: None(),
      );
}
