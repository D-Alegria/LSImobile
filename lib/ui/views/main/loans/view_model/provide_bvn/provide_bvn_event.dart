part of 'provide_bvn_bloc.dart';

@freezed
abstract class ProvideBvnEvent with _$ProvideBvnEvent {
  const factory ProvideBvnEvent.checkBVN() = CheckBVN;

  const factory ProvideBvnEvent.verifyBVN() = VerifyBVN;
}
