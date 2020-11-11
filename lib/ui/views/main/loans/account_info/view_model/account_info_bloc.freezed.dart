// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountInfoEventTearOff {
  const _$AccountInfoEventTearOff();

// ignore: unused_element
  BankNameChanged bankNameChanged(String bankName) {
    return BankNameChanged(
      bankName,
    );
  }

// ignore: unused_element
  AccountNumberChanged accountNumberChanged(String accountNumber) {
    return AccountNumberChanged(
      accountNumber,
    );
  }

// ignore: unused_element
  SubmitAccountInfoForm submitAccountInfoForm() {
    return const SubmitAccountInfoForm();
  }

// ignore: unused_element
  ApplyForLoan applyForLoan(String bvn) {
    return ApplyForLoan(
      bvn,
    );
  }

// ignore: unused_element
  Init init({LoanRequest request, LoanProduct loanProduct}) {
    return Init(
      request: request,
      loanProduct: loanProduct,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountInfoEvent = _$AccountInfoEventTearOff();

/// @nodoc
mixin _$AccountInfoEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bankNameChanged(String bankName),
    @required Result accountNumberChanged(String accountNumber),
    @required Result submitAccountInfoForm(),
    @required Result applyForLoan(String bvn),
    @required Result init(LoanRequest request, LoanProduct loanProduct),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bankNameChanged(String bankName),
    Result accountNumberChanged(String accountNumber),
    Result submitAccountInfoForm(),
    Result applyForLoan(String bvn),
    Result init(LoanRequest request, LoanProduct loanProduct),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bankNameChanged(BankNameChanged value),
    @required Result accountNumberChanged(AccountNumberChanged value),
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result applyForLoan(ApplyForLoan value),
    @required Result init(Init value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bankNameChanged(BankNameChanged value),
    Result accountNumberChanged(AccountNumberChanged value),
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    Result applyForLoan(ApplyForLoan value),
    Result init(Init value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccountInfoEventCopyWith<$Res> {
  factory $AccountInfoEventCopyWith(
          AccountInfoEvent value, $Res Function(AccountInfoEvent) then) =
      _$AccountInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountInfoEventCopyWithImpl<$Res>
    implements $AccountInfoEventCopyWith<$Res> {
  _$AccountInfoEventCopyWithImpl(this._value, this._then);

  final AccountInfoEvent _value;
  // ignore: unused_field
  final $Res Function(AccountInfoEvent) _then;
}

/// @nodoc
abstract class $BankNameChangedCopyWith<$Res> {
  factory $BankNameChangedCopyWith(
          BankNameChanged value, $Res Function(BankNameChanged) then) =
      _$BankNameChangedCopyWithImpl<$Res>;
  $Res call({String bankName});
}

/// @nodoc
class _$BankNameChangedCopyWithImpl<$Res>
    extends _$AccountInfoEventCopyWithImpl<$Res>
    implements $BankNameChangedCopyWith<$Res> {
  _$BankNameChangedCopyWithImpl(
      BankNameChanged _value, $Res Function(BankNameChanged) _then)
      : super(_value, (v) => _then(v as BankNameChanged));

  @override
  BankNameChanged get _value => super._value as BankNameChanged;

  @override
  $Res call({
    Object bankName = freezed,
  }) {
    return _then(BankNameChanged(
      bankName == freezed ? _value.bankName : bankName as String,
    ));
  }
}

/// @nodoc
class _$BankNameChanged implements BankNameChanged {
  const _$BankNameChanged(this.bankName) : assert(bankName != null);

  @override
  final String bankName;

  @override
  String toString() {
    return 'AccountInfoEvent.bankNameChanged(bankName: $bankName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BankNameChanged &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bankName);

  @override
  $BankNameChangedCopyWith<BankNameChanged> get copyWith =>
      _$BankNameChangedCopyWithImpl<BankNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bankNameChanged(String bankName),
    @required Result accountNumberChanged(String accountNumber),
    @required Result submitAccountInfoForm(),
    @required Result applyForLoan(String bvn),
    @required Result init(LoanRequest request, LoanProduct loanProduct),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return bankNameChanged(bankName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bankNameChanged(String bankName),
    Result accountNumberChanged(String accountNumber),
    Result submitAccountInfoForm(),
    Result applyForLoan(String bvn),
    Result init(LoanRequest request, LoanProduct loanProduct),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bankNameChanged != null) {
      return bankNameChanged(bankName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bankNameChanged(BankNameChanged value),
    @required Result accountNumberChanged(AccountNumberChanged value),
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result applyForLoan(ApplyForLoan value),
    @required Result init(Init value),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return bankNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bankNameChanged(BankNameChanged value),
    Result accountNumberChanged(AccountNumberChanged value),
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    Result applyForLoan(ApplyForLoan value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bankNameChanged != null) {
      return bankNameChanged(this);
    }
    return orElse();
  }
}

abstract class BankNameChanged implements AccountInfoEvent {
  const factory BankNameChanged(String bankName) = _$BankNameChanged;

  String get bankName;
  $BankNameChangedCopyWith<BankNameChanged> get copyWith;
}

/// @nodoc
abstract class $AccountNumberChangedCopyWith<$Res> {
  factory $AccountNumberChangedCopyWith(AccountNumberChanged value,
          $Res Function(AccountNumberChanged) then) =
      _$AccountNumberChangedCopyWithImpl<$Res>;
  $Res call({String accountNumber});
}

/// @nodoc
class _$AccountNumberChangedCopyWithImpl<$Res>
    extends _$AccountInfoEventCopyWithImpl<$Res>
    implements $AccountNumberChangedCopyWith<$Res> {
  _$AccountNumberChangedCopyWithImpl(
      AccountNumberChanged _value, $Res Function(AccountNumberChanged) _then)
      : super(_value, (v) => _then(v as AccountNumberChanged));

  @override
  AccountNumberChanged get _value => super._value as AccountNumberChanged;

  @override
  $Res call({
    Object accountNumber = freezed,
  }) {
    return _then(AccountNumberChanged(
      accountNumber == freezed ? _value.accountNumber : accountNumber as String,
    ));
  }
}

/// @nodoc
class _$AccountNumberChanged implements AccountNumberChanged {
  const _$AccountNumberChanged(this.accountNumber)
      : assert(accountNumber != null);

  @override
  final String accountNumber;

  @override
  String toString() {
    return 'AccountInfoEvent.accountNumberChanged(accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountNumberChanged &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accountNumber);

  @override
  $AccountNumberChangedCopyWith<AccountNumberChanged> get copyWith =>
      _$AccountNumberChangedCopyWithImpl<AccountNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bankNameChanged(String bankName),
    @required Result accountNumberChanged(String accountNumber),
    @required Result submitAccountInfoForm(),
    @required Result applyForLoan(String bvn),
    @required Result init(LoanRequest request, LoanProduct loanProduct),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return accountNumberChanged(accountNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bankNameChanged(String bankName),
    Result accountNumberChanged(String accountNumber),
    Result submitAccountInfoForm(),
    Result applyForLoan(String bvn),
    Result init(LoanRequest request, LoanProduct loanProduct),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountNumberChanged != null) {
      return accountNumberChanged(accountNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bankNameChanged(BankNameChanged value),
    @required Result accountNumberChanged(AccountNumberChanged value),
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result applyForLoan(ApplyForLoan value),
    @required Result init(Init value),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return accountNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bankNameChanged(BankNameChanged value),
    Result accountNumberChanged(AccountNumberChanged value),
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    Result applyForLoan(ApplyForLoan value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountNumberChanged != null) {
      return accountNumberChanged(this);
    }
    return orElse();
  }
}

abstract class AccountNumberChanged implements AccountInfoEvent {
  const factory AccountNumberChanged(String accountNumber) =
      _$AccountNumberChanged;

  String get accountNumber;
  $AccountNumberChangedCopyWith<AccountNumberChanged> get copyWith;
}

/// @nodoc
abstract class $SubmitAccountInfoFormCopyWith<$Res> {
  factory $SubmitAccountInfoFormCopyWith(SubmitAccountInfoForm value,
          $Res Function(SubmitAccountInfoForm) then) =
      _$SubmitAccountInfoFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitAccountInfoFormCopyWithImpl<$Res>
    extends _$AccountInfoEventCopyWithImpl<$Res>
    implements $SubmitAccountInfoFormCopyWith<$Res> {
  _$SubmitAccountInfoFormCopyWithImpl(
      SubmitAccountInfoForm _value, $Res Function(SubmitAccountInfoForm) _then)
      : super(_value, (v) => _then(v as SubmitAccountInfoForm));

  @override
  SubmitAccountInfoForm get _value => super._value as SubmitAccountInfoForm;
}

/// @nodoc
class _$SubmitAccountInfoForm implements SubmitAccountInfoForm {
  const _$SubmitAccountInfoForm();

  @override
  String toString() {
    return 'AccountInfoEvent.submitAccountInfoForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitAccountInfoForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bankNameChanged(String bankName),
    @required Result accountNumberChanged(String accountNumber),
    @required Result submitAccountInfoForm(),
    @required Result applyForLoan(String bvn),
    @required Result init(LoanRequest request, LoanProduct loanProduct),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return submitAccountInfoForm();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bankNameChanged(String bankName),
    Result accountNumberChanged(String accountNumber),
    Result submitAccountInfoForm(),
    Result applyForLoan(String bvn),
    Result init(LoanRequest request, LoanProduct loanProduct),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitAccountInfoForm != null) {
      return submitAccountInfoForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bankNameChanged(BankNameChanged value),
    @required Result accountNumberChanged(AccountNumberChanged value),
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result applyForLoan(ApplyForLoan value),
    @required Result init(Init value),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return submitAccountInfoForm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bankNameChanged(BankNameChanged value),
    Result accountNumberChanged(AccountNumberChanged value),
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    Result applyForLoan(ApplyForLoan value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitAccountInfoForm != null) {
      return submitAccountInfoForm(this);
    }
    return orElse();
  }
}

abstract class SubmitAccountInfoForm implements AccountInfoEvent {
  const factory SubmitAccountInfoForm() = _$SubmitAccountInfoForm;
}

/// @nodoc
abstract class $ApplyForLoanCopyWith<$Res> {
  factory $ApplyForLoanCopyWith(
          ApplyForLoan value, $Res Function(ApplyForLoan) then) =
      _$ApplyForLoanCopyWithImpl<$Res>;
  $Res call({String bvn});
}

/// @nodoc
class _$ApplyForLoanCopyWithImpl<$Res>
    extends _$AccountInfoEventCopyWithImpl<$Res>
    implements $ApplyForLoanCopyWith<$Res> {
  _$ApplyForLoanCopyWithImpl(
      ApplyForLoan _value, $Res Function(ApplyForLoan) _then)
      : super(_value, (v) => _then(v as ApplyForLoan));

  @override
  ApplyForLoan get _value => super._value as ApplyForLoan;

  @override
  $Res call({
    Object bvn = freezed,
  }) {
    return _then(ApplyForLoan(
      bvn == freezed ? _value.bvn : bvn as String,
    ));
  }
}

/// @nodoc
class _$ApplyForLoan implements ApplyForLoan {
  const _$ApplyForLoan(this.bvn) : assert(bvn != null);

  @override
  final String bvn;

  @override
  String toString() {
    return 'AccountInfoEvent.applyForLoan(bvn: $bvn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApplyForLoan &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bvn);

  @override
  $ApplyForLoanCopyWith<ApplyForLoan> get copyWith =>
      _$ApplyForLoanCopyWithImpl<ApplyForLoan>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bankNameChanged(String bankName),
    @required Result accountNumberChanged(String accountNumber),
    @required Result submitAccountInfoForm(),
    @required Result applyForLoan(String bvn),
    @required Result init(LoanRequest request, LoanProduct loanProduct),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return applyForLoan(bvn);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bankNameChanged(String bankName),
    Result accountNumberChanged(String accountNumber),
    Result submitAccountInfoForm(),
    Result applyForLoan(String bvn),
    Result init(LoanRequest request, LoanProduct loanProduct),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (applyForLoan != null) {
      return applyForLoan(bvn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bankNameChanged(BankNameChanged value),
    @required Result accountNumberChanged(AccountNumberChanged value),
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result applyForLoan(ApplyForLoan value),
    @required Result init(Init value),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return applyForLoan(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bankNameChanged(BankNameChanged value),
    Result accountNumberChanged(AccountNumberChanged value),
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    Result applyForLoan(ApplyForLoan value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (applyForLoan != null) {
      return applyForLoan(this);
    }
    return orElse();
  }
}

abstract class ApplyForLoan implements AccountInfoEvent {
  const factory ApplyForLoan(String bvn) = _$ApplyForLoan;

  String get bvn;
  $ApplyForLoanCopyWith<ApplyForLoan> get copyWith;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({LoanRequest request, LoanProduct loanProduct});

  $LoanRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$AccountInfoEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object request = freezed,
    Object loanProduct = freezed,
  }) {
    return _then(Init(
      request: request == freezed ? _value.request : request as LoanRequest,
      loanProduct: loanProduct == freezed
          ? _value.loanProduct
          : loanProduct as LoanProduct,
    ));
  }

  @override
  $LoanRequestCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $LoanRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
class _$Init implements Init {
  const _$Init({this.request, this.loanProduct});

  @override
  final LoanRequest request;
  @override
  final LoanProduct loanProduct;

  @override
  String toString() {
    return 'AccountInfoEvent.init(request: $request, loanProduct: $loanProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.loanProduct, loanProduct) ||
                const DeepCollectionEquality()
                    .equals(other.loanProduct, loanProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(loanProduct);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bankNameChanged(String bankName),
    @required Result accountNumberChanged(String accountNumber),
    @required Result submitAccountInfoForm(),
    @required Result applyForLoan(String bvn),
    @required Result init(LoanRequest request, LoanProduct loanProduct),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return init(request, loanProduct);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bankNameChanged(String bankName),
    Result accountNumberChanged(String accountNumber),
    Result submitAccountInfoForm(),
    Result applyForLoan(String bvn),
    Result init(LoanRequest request, LoanProduct loanProduct),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(request, loanProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bankNameChanged(BankNameChanged value),
    @required Result accountNumberChanged(AccountNumberChanged value),
    @required Result submitAccountInfoForm(SubmitAccountInfoForm value),
    @required Result applyForLoan(ApplyForLoan value),
    @required Result init(Init value),
  }) {
    assert(bankNameChanged != null);
    assert(accountNumberChanged != null);
    assert(submitAccountInfoForm != null);
    assert(applyForLoan != null);
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bankNameChanged(BankNameChanged value),
    Result accountNumberChanged(AccountNumberChanged value),
    Result submitAccountInfoForm(SubmitAccountInfoForm value),
    Result applyForLoan(ApplyForLoan value),
    Result init(Init value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AccountInfoEvent {
  const factory Init({LoanRequest request, LoanProduct loanProduct}) = _$Init;

  LoanRequest get request;
  LoanProduct get loanProduct;
  $InitCopyWith<Init> get copyWith;
}

/// @nodoc
class _$AccountInfoStateTearOff {
  const _$AccountInfoStateTearOff();

// ignore: unused_element
  _AccountInfoState call(
      {LoanRequest loanRequest,
      LoanProduct loanProduct,
      @required String bankId,
      @required String bankName,
      @required List<Value> banks,
      @required String accountNumber,
      @required String accountName,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitAccountInfoFailureOrSuccess,
      @required Option<Either<Glitch, Unit>> applyForLoanFailureOrSuccess}) {
    return _AccountInfoState(
      loanRequest: loanRequest,
      loanProduct: loanProduct,
      bankId: bankId,
      bankName: bankName,
      banks: banks,
      accountNumber: accountNumber,
      accountName: accountName,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitAccountInfoFailureOrSuccess: submitAccountInfoFailureOrSuccess,
      applyForLoanFailureOrSuccess: applyForLoanFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountInfoState = _$AccountInfoStateTearOff();

/// @nodoc
mixin _$AccountInfoState {
  LoanRequest get loanRequest;
  LoanProduct get loanProduct;
  String get bankId;
  String get bankName;
  List<Value> get banks;
  String get accountNumber;
  String get accountName;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitAccountInfoFailureOrSuccess;
  Option<Either<Glitch, Unit>> get applyForLoanFailureOrSuccess;

  $AccountInfoStateCopyWith<AccountInfoState> get copyWith;
}

/// @nodoc
abstract class $AccountInfoStateCopyWith<$Res> {
  factory $AccountInfoStateCopyWith(
          AccountInfoState value, $Res Function(AccountInfoState) then) =
      _$AccountInfoStateCopyWithImpl<$Res>;
  $Res call(
      {LoanRequest loanRequest,
      LoanProduct loanProduct,
      String bankId,
      String bankName,
      List<Value> banks,
      String accountNumber,
      String accountName,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitAccountInfoFailureOrSuccess,
      Option<Either<Glitch, Unit>> applyForLoanFailureOrSuccess});

  $LoanRequestCopyWith<$Res> get loanRequest;
}

/// @nodoc
class _$AccountInfoStateCopyWithImpl<$Res>
    implements $AccountInfoStateCopyWith<$Res> {
  _$AccountInfoStateCopyWithImpl(this._value, this._then);

  final AccountInfoState _value;
  // ignore: unused_field
  final $Res Function(AccountInfoState) _then;

  @override
  $Res call({
    Object loanRequest = freezed,
    Object loanProduct = freezed,
    Object bankId = freezed,
    Object bankName = freezed,
    Object banks = freezed,
    Object accountNumber = freezed,
    Object accountName = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitAccountInfoFailureOrSuccess = freezed,
    Object applyForLoanFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      loanRequest: loanRequest == freezed
          ? _value.loanRequest
          : loanRequest as LoanRequest,
      loanProduct: loanProduct == freezed
          ? _value.loanProduct
          : loanProduct as LoanProduct,
      bankId: bankId == freezed ? _value.bankId : bankId as String,
      bankName: bankName == freezed ? _value.bankName : bankName as String,
      banks: banks == freezed ? _value.banks : banks as List<Value>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber as String,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitAccountInfoFailureOrSuccess: submitAccountInfoFailureOrSuccess ==
              freezed
          ? _value.submitAccountInfoFailureOrSuccess
          : submitAccountInfoFailureOrSuccess as Option<Either<Glitch, Unit>>,
      applyForLoanFailureOrSuccess: applyForLoanFailureOrSuccess == freezed
          ? _value.applyForLoanFailureOrSuccess
          : applyForLoanFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }

  @override
  $LoanRequestCopyWith<$Res> get loanRequest {
    if (_value.loanRequest == null) {
      return null;
    }
    return $LoanRequestCopyWith<$Res>(_value.loanRequest, (value) {
      return _then(_value.copyWith(loanRequest: value));
    });
  }
}

/// @nodoc
abstract class _$AccountInfoStateCopyWith<$Res>
    implements $AccountInfoStateCopyWith<$Res> {
  factory _$AccountInfoStateCopyWith(
          _AccountInfoState value, $Res Function(_AccountInfoState) then) =
      __$AccountInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LoanRequest loanRequest,
      LoanProduct loanProduct,
      String bankId,
      String bankName,
      List<Value> banks,
      String accountNumber,
      String accountName,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitAccountInfoFailureOrSuccess,
      Option<Either<Glitch, Unit>> applyForLoanFailureOrSuccess});

  @override
  $LoanRequestCopyWith<$Res> get loanRequest;
}

/// @nodoc
class __$AccountInfoStateCopyWithImpl<$Res>
    extends _$AccountInfoStateCopyWithImpl<$Res>
    implements _$AccountInfoStateCopyWith<$Res> {
  __$AccountInfoStateCopyWithImpl(
      _AccountInfoState _value, $Res Function(_AccountInfoState) _then)
      : super(_value, (v) => _then(v as _AccountInfoState));

  @override
  _AccountInfoState get _value => super._value as _AccountInfoState;

  @override
  $Res call({
    Object loanRequest = freezed,
    Object loanProduct = freezed,
    Object bankId = freezed,
    Object bankName = freezed,
    Object banks = freezed,
    Object accountNumber = freezed,
    Object accountName = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitAccountInfoFailureOrSuccess = freezed,
    Object applyForLoanFailureOrSuccess = freezed,
  }) {
    return _then(_AccountInfoState(
      loanRequest: loanRequest == freezed
          ? _value.loanRequest
          : loanRequest as LoanRequest,
      loanProduct: loanProduct == freezed
          ? _value.loanProduct
          : loanProduct as LoanProduct,
      bankId: bankId == freezed ? _value.bankId : bankId as String,
      bankName: bankName == freezed ? _value.bankName : bankName as String,
      banks: banks == freezed ? _value.banks : banks as List<Value>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber as String,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitAccountInfoFailureOrSuccess: submitAccountInfoFailureOrSuccess ==
              freezed
          ? _value.submitAccountInfoFailureOrSuccess
          : submitAccountInfoFailureOrSuccess as Option<Either<Glitch, Unit>>,
      applyForLoanFailureOrSuccess: applyForLoanFailureOrSuccess == freezed
          ? _value.applyForLoanFailureOrSuccess
          : applyForLoanFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AccountInfoState implements _AccountInfoState {
  const _$_AccountInfoState(
      {this.loanRequest,
      this.loanProduct,
      @required this.bankId,
      @required this.bankName,
      @required this.banks,
      @required this.accountNumber,
      @required this.accountName,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitAccountInfoFailureOrSuccess,
      @required this.applyForLoanFailureOrSuccess})
      : assert(bankId != null),
        assert(bankName != null),
        assert(banks != null),
        assert(accountNumber != null),
        assert(accountName != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitAccountInfoFailureOrSuccess != null),
        assert(applyForLoanFailureOrSuccess != null);

  @override
  final LoanRequest loanRequest;
  @override
  final LoanProduct loanProduct;
  @override
  final String bankId;
  @override
  final String bankName;
  @override
  final List<Value> banks;
  @override
  final String accountNumber;
  @override
  final String accountName;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitAccountInfoFailureOrSuccess;
  @override
  final Option<Either<Glitch, Unit>> applyForLoanFailureOrSuccess;

  @override
  String toString() {
    return 'AccountInfoState(loanRequest: $loanRequest, loanProduct: $loanProduct, bankId: $bankId, bankName: $bankName, banks: $banks, accountNumber: $accountNumber, accountName: $accountName, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitAccountInfoFailureOrSuccess: $submitAccountInfoFailureOrSuccess, applyForLoanFailureOrSuccess: $applyForLoanFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountInfoState &&
            (identical(other.loanRequest, loanRequest) ||
                const DeepCollectionEquality()
                    .equals(other.loanRequest, loanRequest)) &&
            (identical(other.loanProduct, loanProduct) ||
                const DeepCollectionEquality()
                    .equals(other.loanProduct, loanProduct)) &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.banks, banks) ||
                const DeepCollectionEquality().equals(other.banks, banks)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitAccountInfoFailureOrSuccess,
                    submitAccountInfoFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitAccountInfoFailureOrSuccess,
                    submitAccountInfoFailureOrSuccess)) &&
            (identical(other.applyForLoanFailureOrSuccess,
                    applyForLoanFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.applyForLoanFailureOrSuccess,
                    applyForLoanFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loanRequest) ^
      const DeepCollectionEquality().hash(loanProduct) ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(banks) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitAccountInfoFailureOrSuccess) ^
      const DeepCollectionEquality().hash(applyForLoanFailureOrSuccess);

  @override
  _$AccountInfoStateCopyWith<_AccountInfoState> get copyWith =>
      __$AccountInfoStateCopyWithImpl<_AccountInfoState>(this, _$identity);
}

abstract class _AccountInfoState implements AccountInfoState {
  const factory _AccountInfoState(
          {LoanRequest loanRequest,
          LoanProduct loanProduct,
          @required
              String bankId,
          @required
              String bankName,
          @required
              List<Value> banks,
          @required
              String accountNumber,
          @required
              String accountName,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<Glitch, Unit>> submitAccountInfoFailureOrSuccess,
          @required
              Option<Either<Glitch, Unit>> applyForLoanFailureOrSuccess}) =
      _$_AccountInfoState;

  @override
  LoanRequest get loanRequest;
  @override
  LoanProduct get loanProduct;
  @override
  String get bankId;
  @override
  String get bankName;
  @override
  List<Value> get banks;
  @override
  String get accountNumber;
  @override
  String get accountName;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitAccountInfoFailureOrSuccess;
  @override
  Option<Either<Glitch, Unit>> get applyForLoanFailureOrSuccess;
  @override
  _$AccountInfoStateCopyWith<_AccountInfoState> get copyWith;
}
