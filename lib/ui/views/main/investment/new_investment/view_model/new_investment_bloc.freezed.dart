// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_investment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewInvestmentEventTearOff {
  const _$NewInvestmentEventTearOff();

// ignore: unused_element
  Init init(InvestmentProduct product) {
    return Init(
      product,
    );
  }

// ignore: unused_element
  ProceedToFunding proceedToFunding() {
    return const ProceedToFunding();
  }

// ignore: unused_element
  AmountChanged amountChanged(double amount) {
    return AmountChanged(
      amount,
    );
  }

// ignore: unused_element
  DurationChanged durationChanged(int duration) {
    return DurationChanged(
      duration,
    );
  }

// ignore: unused_element
  Restart restart() {
    return const Restart();
  }
}

/// @nodoc
// ignore: unused_element
const $NewInvestmentEvent = _$NewInvestmentEventTearOff();

/// @nodoc
mixin _$NewInvestmentEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(InvestmentProduct product),
    @required Result proceedToFunding(),
    @required Result amountChanged(double amount),
    @required Result durationChanged(int duration),
    @required Result restart(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(InvestmentProduct product),
    Result proceedToFunding(),
    Result amountChanged(double amount),
    Result durationChanged(int duration),
    Result restart(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result proceedToFunding(ProceedToFunding value),
    @required Result amountChanged(AmountChanged value),
    @required Result durationChanged(DurationChanged value),
    @required Result restart(Restart value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result proceedToFunding(ProceedToFunding value),
    Result amountChanged(AmountChanged value),
    Result durationChanged(DurationChanged value),
    Result restart(Restart value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NewInvestmentEventCopyWith<$Res> {
  factory $NewInvestmentEventCopyWith(
          NewInvestmentEvent value, $Res Function(NewInvestmentEvent) then) =
      _$NewInvestmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewInvestmentEventCopyWithImpl<$Res>
    implements $NewInvestmentEventCopyWith<$Res> {
  _$NewInvestmentEventCopyWithImpl(this._value, this._then);

  final NewInvestmentEvent _value;
  // ignore: unused_field
  final $Res Function(NewInvestmentEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({InvestmentProduct product});
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$NewInvestmentEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object product = freezed,
  }) {
    return _then(Init(
      product == freezed ? _value.product : product as InvestmentProduct,
    ));
  }
}

/// @nodoc
class _$Init implements Init {
  const _$Init(this.product) : assert(product != null);

  @override
  final InvestmentProduct product;

  @override
  String toString() {
    return 'NewInvestmentEvent.init(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(InvestmentProduct product),
    @required Result proceedToFunding(),
    @required Result amountChanged(double amount),
    @required Result durationChanged(int duration),
    @required Result restart(),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return init(product);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(InvestmentProduct product),
    Result proceedToFunding(),
    Result amountChanged(double amount),
    Result durationChanged(int duration),
    Result restart(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result proceedToFunding(ProceedToFunding value),
    @required Result amountChanged(AmountChanged value),
    @required Result durationChanged(DurationChanged value),
    @required Result restart(Restart value),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result proceedToFunding(ProceedToFunding value),
    Result amountChanged(AmountChanged value),
    Result durationChanged(DurationChanged value),
    Result restart(Restart value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements NewInvestmentEvent {
  const factory Init(InvestmentProduct product) = _$Init;

  InvestmentProduct get product;
  $InitCopyWith<Init> get copyWith;
}

/// @nodoc
abstract class $ProceedToFundingCopyWith<$Res> {
  factory $ProceedToFundingCopyWith(
          ProceedToFunding value, $Res Function(ProceedToFunding) then) =
      _$ProceedToFundingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProceedToFundingCopyWithImpl<$Res>
    extends _$NewInvestmentEventCopyWithImpl<$Res>
    implements $ProceedToFundingCopyWith<$Res> {
  _$ProceedToFundingCopyWithImpl(
      ProceedToFunding _value, $Res Function(ProceedToFunding) _then)
      : super(_value, (v) => _then(v as ProceedToFunding));

  @override
  ProceedToFunding get _value => super._value as ProceedToFunding;
}

/// @nodoc
class _$ProceedToFunding implements ProceedToFunding {
  const _$ProceedToFunding();

  @override
  String toString() {
    return 'NewInvestmentEvent.proceedToFunding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProceedToFunding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(InvestmentProduct product),
    @required Result proceedToFunding(),
    @required Result amountChanged(double amount),
    @required Result durationChanged(int duration),
    @required Result restart(),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return proceedToFunding();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(InvestmentProduct product),
    Result proceedToFunding(),
    Result amountChanged(double amount),
    Result durationChanged(int duration),
    Result restart(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (proceedToFunding != null) {
      return proceedToFunding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result proceedToFunding(ProceedToFunding value),
    @required Result amountChanged(AmountChanged value),
    @required Result durationChanged(DurationChanged value),
    @required Result restart(Restart value),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return proceedToFunding(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result proceedToFunding(ProceedToFunding value),
    Result amountChanged(AmountChanged value),
    Result durationChanged(DurationChanged value),
    Result restart(Restart value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (proceedToFunding != null) {
      return proceedToFunding(this);
    }
    return orElse();
  }
}

abstract class ProceedToFunding implements NewInvestmentEvent {
  const factory ProceedToFunding() = _$ProceedToFunding;
}

/// @nodoc
abstract class $AmountChangedCopyWith<$Res> {
  factory $AmountChangedCopyWith(
          AmountChanged value, $Res Function(AmountChanged) then) =
      _$AmountChangedCopyWithImpl<$Res>;
  $Res call({double amount});
}

/// @nodoc
class _$AmountChangedCopyWithImpl<$Res>
    extends _$NewInvestmentEventCopyWithImpl<$Res>
    implements $AmountChangedCopyWith<$Res> {
  _$AmountChangedCopyWithImpl(
      AmountChanged _value, $Res Function(AmountChanged) _then)
      : super(_value, (v) => _then(v as AmountChanged));

  @override
  AmountChanged get _value => super._value as AmountChanged;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(AmountChanged(
      amount == freezed ? _value.amount : amount as double,
    ));
  }
}

/// @nodoc
class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amount) : assert(amount != null);

  @override
  final double amount;

  @override
  String toString() {
    return 'NewInvestmentEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AmountChanged &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @override
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      _$AmountChangedCopyWithImpl<AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(InvestmentProduct product),
    @required Result proceedToFunding(),
    @required Result amountChanged(double amount),
    @required Result durationChanged(int duration),
    @required Result restart(),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(InvestmentProduct product),
    Result proceedToFunding(),
    Result amountChanged(double amount),
    Result durationChanged(int duration),
    Result restart(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result proceedToFunding(ProceedToFunding value),
    @required Result amountChanged(AmountChanged value),
    @required Result durationChanged(DurationChanged value),
    @required Result restart(Restart value),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result proceedToFunding(ProceedToFunding value),
    Result amountChanged(AmountChanged value),
    Result durationChanged(DurationChanged value),
    Result restart(Restart value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements NewInvestmentEvent {
  const factory AmountChanged(double amount) = _$AmountChanged;

  double get amount;
  $AmountChangedCopyWith<AmountChanged> get copyWith;
}

/// @nodoc
abstract class $DurationChangedCopyWith<$Res> {
  factory $DurationChangedCopyWith(
          DurationChanged value, $Res Function(DurationChanged) then) =
      _$DurationChangedCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class _$DurationChangedCopyWithImpl<$Res>
    extends _$NewInvestmentEventCopyWithImpl<$Res>
    implements $DurationChangedCopyWith<$Res> {
  _$DurationChangedCopyWithImpl(
      DurationChanged _value, $Res Function(DurationChanged) _then)
      : super(_value, (v) => _then(v as DurationChanged));

  @override
  DurationChanged get _value => super._value as DurationChanged;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(DurationChanged(
      duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$DurationChanged implements DurationChanged {
  const _$DurationChanged(this.duration) : assert(duration != null);

  @override
  final int duration;

  @override
  String toString() {
    return 'NewInvestmentEvent.durationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DurationChanged &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  $DurationChangedCopyWith<DurationChanged> get copyWith =>
      _$DurationChangedCopyWithImpl<DurationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(InvestmentProduct product),
    @required Result proceedToFunding(),
    @required Result amountChanged(double amount),
    @required Result durationChanged(int duration),
    @required Result restart(),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(InvestmentProduct product),
    Result proceedToFunding(),
    Result amountChanged(double amount),
    Result durationChanged(int duration),
    Result restart(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (durationChanged != null) {
      return durationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result proceedToFunding(ProceedToFunding value),
    @required Result amountChanged(AmountChanged value),
    @required Result durationChanged(DurationChanged value),
    @required Result restart(Restart value),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result proceedToFunding(ProceedToFunding value),
    Result amountChanged(AmountChanged value),
    Result durationChanged(DurationChanged value),
    Result restart(Restart value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class DurationChanged implements NewInvestmentEvent {
  const factory DurationChanged(int duration) = _$DurationChanged;

  int get duration;
  $DurationChangedCopyWith<DurationChanged> get copyWith;
}

/// @nodoc
abstract class $RestartCopyWith<$Res> {
  factory $RestartCopyWith(Restart value, $Res Function(Restart) then) =
      _$RestartCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestartCopyWithImpl<$Res> extends _$NewInvestmentEventCopyWithImpl<$Res>
    implements $RestartCopyWith<$Res> {
  _$RestartCopyWithImpl(Restart _value, $Res Function(Restart) _then)
      : super(_value, (v) => _then(v as Restart));

  @override
  Restart get _value => super._value as Restart;
}

/// @nodoc
class _$Restart implements Restart {
  const _$Restart();

  @override
  String toString() {
    return 'NewInvestmentEvent.restart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Restart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(InvestmentProduct product),
    @required Result proceedToFunding(),
    @required Result amountChanged(double amount),
    @required Result durationChanged(int duration),
    @required Result restart(),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return restart();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(InvestmentProduct product),
    Result proceedToFunding(),
    Result amountChanged(double amount),
    Result durationChanged(int duration),
    Result restart(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restart != null) {
      return restart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result proceedToFunding(ProceedToFunding value),
    @required Result amountChanged(AmountChanged value),
    @required Result durationChanged(DurationChanged value),
    @required Result restart(Restart value),
  }) {
    assert(init != null);
    assert(proceedToFunding != null);
    assert(amountChanged != null);
    assert(durationChanged != null);
    assert(restart != null);
    return restart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result proceedToFunding(ProceedToFunding value),
    Result amountChanged(AmountChanged value),
    Result durationChanged(DurationChanged value),
    Result restart(Restart value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restart != null) {
      return restart(this);
    }
    return orElse();
  }
}

abstract class Restart implements NewInvestmentEvent {
  const factory Restart() = _$Restart;
}

/// @nodoc
class _$NewInvestmentStateTearOff {
  const _$NewInvestmentStateTearOff();

// ignore: unused_element
  _NewInvestmentState call(
      {InvestmentProduct investmentProduct,
      @required double amount,
      @required int duration,
      @required String tenure,
      @required String investmentDate,
      @required String maturityDate,
      @required String investmentRate,
      @required String accruedInterest,
      @required String withholdingTax,
      @required String maturityValue,
      @required List<InvestmentDuration> durations,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _NewInvestmentState(
      investmentProduct: investmentProduct,
      amount: amount,
      duration: duration,
      tenure: tenure,
      investmentDate: investmentDate,
      maturityDate: maturityDate,
      investmentRate: investmentRate,
      accruedInterest: accruedInterest,
      withholdingTax: withholdingTax,
      maturityValue: maturityValue,
      durations: durations,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewInvestmentState = _$NewInvestmentStateTearOff();

/// @nodoc
mixin _$NewInvestmentState {
  InvestmentProduct get investmentProduct;
  double get amount;
  int get duration;
  String get tenure;
  String get investmentDate;
  String get maturityDate;
  String get investmentRate;
  String get accruedInterest;
  String get withholdingTax;
  String get maturityValue;
  List<InvestmentDuration> get durations;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $NewInvestmentStateCopyWith<NewInvestmentState> get copyWith;
}

/// @nodoc
abstract class $NewInvestmentStateCopyWith<$Res> {
  factory $NewInvestmentStateCopyWith(
          NewInvestmentState value, $Res Function(NewInvestmentState) then) =
      _$NewInvestmentStateCopyWithImpl<$Res>;
  $Res call(
      {InvestmentProduct investmentProduct,
      double amount,
      int duration,
      String tenure,
      String investmentDate,
      String maturityDate,
      String investmentRate,
      String accruedInterest,
      String withholdingTax,
      String maturityValue,
      List<InvestmentDuration> durations,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$NewInvestmentStateCopyWithImpl<$Res>
    implements $NewInvestmentStateCopyWith<$Res> {
  _$NewInvestmentStateCopyWithImpl(this._value, this._then);

  final NewInvestmentState _value;
  // ignore: unused_field
  final $Res Function(NewInvestmentState) _then;

  @override
  $Res call({
    Object investmentProduct = freezed,
    Object amount = freezed,
    Object duration = freezed,
    Object tenure = freezed,
    Object investmentDate = freezed,
    Object maturityDate = freezed,
    Object investmentRate = freezed,
    Object accruedInterest = freezed,
    Object withholdingTax = freezed,
    Object maturityValue = freezed,
    Object durations = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      investmentProduct: investmentProduct == freezed
          ? _value.investmentProduct
          : investmentProduct as InvestmentProduct,
      amount: amount == freezed ? _value.amount : amount as double,
      duration: duration == freezed ? _value.duration : duration as int,
      tenure: tenure == freezed ? _value.tenure : tenure as String,
      investmentDate: investmentDate == freezed
          ? _value.investmentDate
          : investmentDate as String,
      maturityDate: maturityDate == freezed
          ? _value.maturityDate
          : maturityDate as String,
      investmentRate: investmentRate == freezed
          ? _value.investmentRate
          : investmentRate as String,
      accruedInterest: accruedInterest == freezed
          ? _value.accruedInterest
          : accruedInterest as String,
      withholdingTax: withholdingTax == freezed
          ? _value.withholdingTax
          : withholdingTax as String,
      maturityValue: maturityValue == freezed
          ? _value.maturityValue
          : maturityValue as String,
      durations: durations == freezed
          ? _value.durations
          : durations as List<InvestmentDuration>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$NewInvestmentStateCopyWith<$Res>
    implements $NewInvestmentStateCopyWith<$Res> {
  factory _$NewInvestmentStateCopyWith(
          _NewInvestmentState value, $Res Function(_NewInvestmentState) then) =
      __$NewInvestmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {InvestmentProduct investmentProduct,
      double amount,
      int duration,
      String tenure,
      String investmentDate,
      String maturityDate,
      String investmentRate,
      String accruedInterest,
      String withholdingTax,
      String maturityValue,
      List<InvestmentDuration> durations,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$NewInvestmentStateCopyWithImpl<$Res>
    extends _$NewInvestmentStateCopyWithImpl<$Res>
    implements _$NewInvestmentStateCopyWith<$Res> {
  __$NewInvestmentStateCopyWithImpl(
      _NewInvestmentState _value, $Res Function(_NewInvestmentState) _then)
      : super(_value, (v) => _then(v as _NewInvestmentState));

  @override
  _NewInvestmentState get _value => super._value as _NewInvestmentState;

  @override
  $Res call({
    Object investmentProduct = freezed,
    Object amount = freezed,
    Object duration = freezed,
    Object tenure = freezed,
    Object investmentDate = freezed,
    Object maturityDate = freezed,
    Object investmentRate = freezed,
    Object accruedInterest = freezed,
    Object withholdingTax = freezed,
    Object maturityValue = freezed,
    Object durations = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_NewInvestmentState(
      investmentProduct: investmentProduct == freezed
          ? _value.investmentProduct
          : investmentProduct as InvestmentProduct,
      amount: amount == freezed ? _value.amount : amount as double,
      duration: duration == freezed ? _value.duration : duration as int,
      tenure: tenure == freezed ? _value.tenure : tenure as String,
      investmentDate: investmentDate == freezed
          ? _value.investmentDate
          : investmentDate as String,
      maturityDate: maturityDate == freezed
          ? _value.maturityDate
          : maturityDate as String,
      investmentRate: investmentRate == freezed
          ? _value.investmentRate
          : investmentRate as String,
      accruedInterest: accruedInterest == freezed
          ? _value.accruedInterest
          : accruedInterest as String,
      withholdingTax: withholdingTax == freezed
          ? _value.withholdingTax
          : withholdingTax as String,
      maturityValue: maturityValue == freezed
          ? _value.maturityValue
          : maturityValue as String,
      durations: durations == freezed
          ? _value.durations
          : durations as List<InvestmentDuration>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccess: submitFailureOrSuccess == freezed
          ? _value.submitFailureOrSuccess
          : submitFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_NewInvestmentState implements _NewInvestmentState {
  const _$_NewInvestmentState(
      {this.investmentProduct,
      @required this.amount,
      @required this.duration,
      @required this.tenure,
      @required this.investmentDate,
      @required this.maturityDate,
      @required this.investmentRate,
      @required this.accruedInterest,
      @required this.withholdingTax,
      @required this.maturityValue,
      @required this.durations,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(amount != null),
        assert(duration != null),
        assert(tenure != null),
        assert(investmentDate != null),
        assert(maturityDate != null),
        assert(investmentRate != null),
        assert(accruedInterest != null),
        assert(withholdingTax != null),
        assert(maturityValue != null),
        assert(durations != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final InvestmentProduct investmentProduct;
  @override
  final double amount;
  @override
  final int duration;
  @override
  final String tenure;
  @override
  final String investmentDate;
  @override
  final String maturityDate;
  @override
  final String investmentRate;
  @override
  final String accruedInterest;
  @override
  final String withholdingTax;
  @override
  final String maturityValue;
  @override
  final List<InvestmentDuration> durations;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'NewInvestmentState(investmentProduct: $investmentProduct, amount: $amount, duration: $duration, tenure: $tenure, investmentDate: $investmentDate, maturityDate: $maturityDate, investmentRate: $investmentRate, accruedInterest: $accruedInterest, withholdingTax: $withholdingTax, maturityValue: $maturityValue, durations: $durations, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewInvestmentState &&
            (identical(other.investmentProduct, investmentProduct) ||
                const DeepCollectionEquality()
                    .equals(other.investmentProduct, investmentProduct)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.tenure, tenure) ||
                const DeepCollectionEquality().equals(other.tenure, tenure)) &&
            (identical(other.investmentDate, investmentDate) ||
                const DeepCollectionEquality()
                    .equals(other.investmentDate, investmentDate)) &&
            (identical(other.maturityDate, maturityDate) ||
                const DeepCollectionEquality()
                    .equals(other.maturityDate, maturityDate)) &&
            (identical(other.investmentRate, investmentRate) ||
                const DeepCollectionEquality()
                    .equals(other.investmentRate, investmentRate)) &&
            (identical(other.accruedInterest, accruedInterest) ||
                const DeepCollectionEquality()
                    .equals(other.accruedInterest, accruedInterest)) &&
            (identical(other.withholdingTax, withholdingTax) ||
                const DeepCollectionEquality()
                    .equals(other.withholdingTax, withholdingTax)) &&
            (identical(other.maturityValue, maturityValue) ||
                const DeepCollectionEquality()
                    .equals(other.maturityValue, maturityValue)) &&
            (identical(other.durations, durations) ||
                const DeepCollectionEquality()
                    .equals(other.durations, durations)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitFailureOrSuccess, submitFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitFailureOrSuccess, submitFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(investmentProduct) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(tenure) ^
      const DeepCollectionEquality().hash(investmentDate) ^
      const DeepCollectionEquality().hash(maturityDate) ^
      const DeepCollectionEquality().hash(investmentRate) ^
      const DeepCollectionEquality().hash(accruedInterest) ^
      const DeepCollectionEquality().hash(withholdingTax) ^
      const DeepCollectionEquality().hash(maturityValue) ^
      const DeepCollectionEquality().hash(durations) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$NewInvestmentStateCopyWith<_NewInvestmentState> get copyWith =>
      __$NewInvestmentStateCopyWithImpl<_NewInvestmentState>(this, _$identity);
}

abstract class _NewInvestmentState implements NewInvestmentState {
  const factory _NewInvestmentState(
          {InvestmentProduct investmentProduct,
          @required double amount,
          @required int duration,
          @required String tenure,
          @required String investmentDate,
          @required String maturityDate,
          @required String investmentRate,
          @required String accruedInterest,
          @required String withholdingTax,
          @required String maturityValue,
          @required List<InvestmentDuration> durations,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_NewInvestmentState;

  @override
  InvestmentProduct get investmentProduct;
  @override
  double get amount;
  @override
  int get duration;
  @override
  String get tenure;
  @override
  String get investmentDate;
  @override
  String get maturityDate;
  @override
  String get investmentRate;
  @override
  String get accruedInterest;
  @override
  String get withholdingTax;
  @override
  String get maturityValue;
  @override
  List<InvestmentDuration> get durations;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$NewInvestmentStateCopyWith<_NewInvestmentState> get copyWith;
}
