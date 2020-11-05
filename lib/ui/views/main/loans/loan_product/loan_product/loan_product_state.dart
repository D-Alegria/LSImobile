part of 'loan_product_cubit.dart';

@freezed
abstract class LoanProductState with _$LoanProductState {
  factory LoanProductState.initial() = Initial;

  factory LoanProductState.loading() = Loading;

  factory LoanProductState.loaded({
    @required List<LoanProduct> loanProducts,
    NextForm nextForm,
    int selected,
  }) = Loaded;

  factory LoanProductState.error(String message) = Error;
}

enum NextForm {
  bvn,
  personalInfo,
  emergencyContact,
  eduAndEmploy,
  residence,
  loanDetails,
}
