part of 'provide_bvn_bloc.dart';

@freezed
abstract class ProvideBvnState with _$ProvideBvnState {
  const factory ProvideBvnState({
    @required String bvn,
    @required String otp,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Glitch, Unit>> submitFailureOrSuccess,
  }) = _ProvideBvnState;

  factory ProvideBvnState.initial() => ProvideBvnState(
        showErrorMessages: false,
        isSubmitting: false,
        submitFailureOrSuccess: None(),
        bvn: "",
        otp: "",
      );
}
