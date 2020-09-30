part of 'account_info_bloc.dart';

@freezed
abstract class AccountInfoEvent with _$AccountInfoEvent {
  const factory AccountInfoEvent.submitAccountInfoForm() = SubmitAccountInfoForm;
}