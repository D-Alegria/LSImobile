part of 'provide_bvn_bloc.dart';

@freezed
abstract class ProvideBvnEvent with _$ProvideBvnEvent {
  const factory ProvideBvnEvent.bvnChanged(String bvn) = BvnChanged;

  const factory ProvideBvnEvent.otpChanged(String otp) = OtpChanged;

  const factory ProvideBvnEvent.checkBVN(String fullName) = CheckBVN;

  const factory ProvideBvnEvent.resendOtp() = ResendOtp;

  const factory ProvideBvnEvent.verifyBVN() = VerifyBVN;
}
