// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'provide_bvn_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProvideBvnEventTearOff {
  const _$ProvideBvnEventTearOff();

// ignore: unused_element
  BvnChanged bvnChanged(String bvn) {
    return BvnChanged(
      bvn,
    );
  }

// ignore: unused_element
  OtpChanged otpChanged(String otp) {
    return OtpChanged(
      otp,
    );
  }

// ignore: unused_element
  CheckBVN checkBVN(String fullName) {
    return CheckBVN(
      fullName,
    );
  }

// ignore: unused_element
  ResendOtp resendOtp(String fullName) {
    return ResendOtp(
      fullName,
    );
  }

// ignore: unused_element
  VerifyBVN verifyBVN() {
    return const VerifyBVN();
  }
}

/// @nodoc
// ignore: unused_element
const $ProvideBvnEvent = _$ProvideBvnEventTearOff();

/// @nodoc
mixin _$ProvideBvnEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bvnChanged(String bvn),
    @required Result otpChanged(String otp),
    @required Result checkBVN(String fullName),
    @required Result resendOtp(String fullName),
    @required Result verifyBVN(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bvnChanged(String bvn),
    Result otpChanged(String otp),
    Result checkBVN(String fullName),
    Result resendOtp(String fullName),
    Result verifyBVN(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bvnChanged(BvnChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result checkBVN(CheckBVN value),
    @required Result resendOtp(ResendOtp value),
    @required Result verifyBVN(VerifyBVN value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bvnChanged(BvnChanged value),
    Result otpChanged(OtpChanged value),
    Result checkBVN(CheckBVN value),
    Result resendOtp(ResendOtp value),
    Result verifyBVN(VerifyBVN value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProvideBvnEventCopyWith<$Res> {
  factory $ProvideBvnEventCopyWith(
          ProvideBvnEvent value, $Res Function(ProvideBvnEvent) then) =
      _$ProvideBvnEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProvideBvnEventCopyWithImpl<$Res>
    implements $ProvideBvnEventCopyWith<$Res> {
  _$ProvideBvnEventCopyWithImpl(this._value, this._then);

  final ProvideBvnEvent _value;
  // ignore: unused_field
  final $Res Function(ProvideBvnEvent) _then;
}

/// @nodoc
abstract class $BvnChangedCopyWith<$Res> {
  factory $BvnChangedCopyWith(
          BvnChanged value, $Res Function(BvnChanged) then) =
      _$BvnChangedCopyWithImpl<$Res>;
  $Res call({String bvn});
}

/// @nodoc
class _$BvnChangedCopyWithImpl<$Res> extends _$ProvideBvnEventCopyWithImpl<$Res>
    implements $BvnChangedCopyWith<$Res> {
  _$BvnChangedCopyWithImpl(BvnChanged _value, $Res Function(BvnChanged) _then)
      : super(_value, (v) => _then(v as BvnChanged));

  @override
  BvnChanged get _value => super._value as BvnChanged;

  @override
  $Res call({
    Object bvn = freezed,
  }) {
    return _then(BvnChanged(
      bvn == freezed ? _value.bvn : bvn as String,
    ));
  }
}

/// @nodoc
class _$BvnChanged implements BvnChanged {
  const _$BvnChanged(this.bvn) : assert(bvn != null);

  @override
  final String bvn;

  @override
  String toString() {
    return 'ProvideBvnEvent.bvnChanged(bvn: $bvn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BvnChanged &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bvn);

  @override
  $BvnChangedCopyWith<BvnChanged> get copyWith =>
      _$BvnChangedCopyWithImpl<BvnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bvnChanged(String bvn),
    @required Result otpChanged(String otp),
    @required Result checkBVN(String fullName),
    @required Result resendOtp(String fullName),
    @required Result verifyBVN(),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return bvnChanged(bvn);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bvnChanged(String bvn),
    Result otpChanged(String otp),
    Result checkBVN(String fullName),
    Result resendOtp(String fullName),
    Result verifyBVN(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bvnChanged != null) {
      return bvnChanged(bvn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bvnChanged(BvnChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result checkBVN(CheckBVN value),
    @required Result resendOtp(ResendOtp value),
    @required Result verifyBVN(VerifyBVN value),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return bvnChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bvnChanged(BvnChanged value),
    Result otpChanged(OtpChanged value),
    Result checkBVN(CheckBVN value),
    Result resendOtp(ResendOtp value),
    Result verifyBVN(VerifyBVN value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bvnChanged != null) {
      return bvnChanged(this);
    }
    return orElse();
  }
}

abstract class BvnChanged implements ProvideBvnEvent {
  const factory BvnChanged(String bvn) = _$BvnChanged;

  String get bvn;
  $BvnChangedCopyWith<BvnChanged> get copyWith;
}

/// @nodoc
abstract class $OtpChangedCopyWith<$Res> {
  factory $OtpChangedCopyWith(
          OtpChanged value, $Res Function(OtpChanged) then) =
      _$OtpChangedCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class _$OtpChangedCopyWithImpl<$Res> extends _$ProvideBvnEventCopyWithImpl<$Res>
    implements $OtpChangedCopyWith<$Res> {
  _$OtpChangedCopyWithImpl(OtpChanged _value, $Res Function(OtpChanged) _then)
      : super(_value, (v) => _then(v as OtpChanged));

  @override
  OtpChanged get _value => super._value as OtpChanged;

  @override
  $Res call({
    Object otp = freezed,
  }) {
    return _then(OtpChanged(
      otp == freezed ? _value.otp : otp as String,
    ));
  }
}

/// @nodoc
class _$OtpChanged implements OtpChanged {
  const _$OtpChanged(this.otp) : assert(otp != null);

  @override
  final String otp;

  @override
  String toString() {
    return 'ProvideBvnEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OtpChanged &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otp);

  @override
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bvnChanged(String bvn),
    @required Result otpChanged(String otp),
    @required Result checkBVN(String fullName),
    @required Result resendOtp(String fullName),
    @required Result verifyBVN(),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bvnChanged(String bvn),
    Result otpChanged(String otp),
    Result checkBVN(String fullName),
    Result resendOtp(String fullName),
    Result verifyBVN(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bvnChanged(BvnChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result checkBVN(CheckBVN value),
    @required Result resendOtp(ResendOtp value),
    @required Result verifyBVN(VerifyBVN value),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bvnChanged(BvnChanged value),
    Result otpChanged(OtpChanged value),
    Result checkBVN(CheckBVN value),
    Result resendOtp(ResendOtp value),
    Result verifyBVN(VerifyBVN value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class OtpChanged implements ProvideBvnEvent {
  const factory OtpChanged(String otp) = _$OtpChanged;

  String get otp;
  $OtpChangedCopyWith<OtpChanged> get copyWith;
}

/// @nodoc
abstract class $CheckBVNCopyWith<$Res> {
  factory $CheckBVNCopyWith(CheckBVN value, $Res Function(CheckBVN) then) =
      _$CheckBVNCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class _$CheckBVNCopyWithImpl<$Res> extends _$ProvideBvnEventCopyWithImpl<$Res>
    implements $CheckBVNCopyWith<$Res> {
  _$CheckBVNCopyWithImpl(CheckBVN _value, $Res Function(CheckBVN) _then)
      : super(_value, (v) => _then(v as CheckBVN));

  @override
  CheckBVN get _value => super._value as CheckBVN;

  @override
  $Res call({
    Object fullName = freezed,
  }) {
    return _then(CheckBVN(
      fullName == freezed ? _value.fullName : fullName as String,
    ));
  }
}

/// @nodoc
class _$CheckBVN implements CheckBVN {
  const _$CheckBVN(this.fullName) : assert(fullName != null);

  @override
  final String fullName;

  @override
  String toString() {
    return 'ProvideBvnEvent.checkBVN(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckBVN &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @override
  $CheckBVNCopyWith<CheckBVN> get copyWith =>
      _$CheckBVNCopyWithImpl<CheckBVN>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bvnChanged(String bvn),
    @required Result otpChanged(String otp),
    @required Result checkBVN(String fullName),
    @required Result resendOtp(String fullName),
    @required Result verifyBVN(),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return checkBVN(fullName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bvnChanged(String bvn),
    Result otpChanged(String otp),
    Result checkBVN(String fullName),
    Result resendOtp(String fullName),
    Result verifyBVN(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkBVN != null) {
      return checkBVN(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bvnChanged(BvnChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result checkBVN(CheckBVN value),
    @required Result resendOtp(ResendOtp value),
    @required Result verifyBVN(VerifyBVN value),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return checkBVN(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bvnChanged(BvnChanged value),
    Result otpChanged(OtpChanged value),
    Result checkBVN(CheckBVN value),
    Result resendOtp(ResendOtp value),
    Result verifyBVN(VerifyBVN value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkBVN != null) {
      return checkBVN(this);
    }
    return orElse();
  }
}

abstract class CheckBVN implements ProvideBvnEvent {
  const factory CheckBVN(String fullName) = _$CheckBVN;

  String get fullName;
  $CheckBVNCopyWith<CheckBVN> get copyWith;
}

/// @nodoc
abstract class $ResendOtpCopyWith<$Res> {
  factory $ResendOtpCopyWith(ResendOtp value, $Res Function(ResendOtp) then) =
      _$ResendOtpCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class _$ResendOtpCopyWithImpl<$Res> extends _$ProvideBvnEventCopyWithImpl<$Res>
    implements $ResendOtpCopyWith<$Res> {
  _$ResendOtpCopyWithImpl(ResendOtp _value, $Res Function(ResendOtp) _then)
      : super(_value, (v) => _then(v as ResendOtp));

  @override
  ResendOtp get _value => super._value as ResendOtp;

  @override
  $Res call({
    Object fullName = freezed,
  }) {
    return _then(ResendOtp(
      fullName == freezed ? _value.fullName : fullName as String,
    ));
  }
}

/// @nodoc
class _$ResendOtp implements ResendOtp {
  const _$ResendOtp(this.fullName) : assert(fullName != null);

  @override
  final String fullName;

  @override
  String toString() {
    return 'ProvideBvnEvent.resendOtp(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResendOtp &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @override
  $ResendOtpCopyWith<ResendOtp> get copyWith =>
      _$ResendOtpCopyWithImpl<ResendOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bvnChanged(String bvn),
    @required Result otpChanged(String otp),
    @required Result checkBVN(String fullName),
    @required Result resendOtp(String fullName),
    @required Result verifyBVN(),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return resendOtp(fullName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bvnChanged(String bvn),
    Result otpChanged(String otp),
    Result checkBVN(String fullName),
    Result resendOtp(String fullName),
    Result verifyBVN(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendOtp != null) {
      return resendOtp(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bvnChanged(BvnChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result checkBVN(CheckBVN value),
    @required Result resendOtp(ResendOtp value),
    @required Result verifyBVN(VerifyBVN value),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bvnChanged(BvnChanged value),
    Result otpChanged(OtpChanged value),
    Result checkBVN(CheckBVN value),
    Result resendOtp(ResendOtp value),
    Result verifyBVN(VerifyBVN value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class ResendOtp implements ProvideBvnEvent {
  const factory ResendOtp(String fullName) = _$ResendOtp;

  String get fullName;
  $ResendOtpCopyWith<ResendOtp> get copyWith;
}

/// @nodoc
abstract class $VerifyBVNCopyWith<$Res> {
  factory $VerifyBVNCopyWith(VerifyBVN value, $Res Function(VerifyBVN) then) =
      _$VerifyBVNCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyBVNCopyWithImpl<$Res> extends _$ProvideBvnEventCopyWithImpl<$Res>
    implements $VerifyBVNCopyWith<$Res> {
  _$VerifyBVNCopyWithImpl(VerifyBVN _value, $Res Function(VerifyBVN) _then)
      : super(_value, (v) => _then(v as VerifyBVN));

  @override
  VerifyBVN get _value => super._value as VerifyBVN;
}

/// @nodoc
class _$VerifyBVN implements VerifyBVN {
  const _$VerifyBVN();

  @override
  String toString() {
    return 'ProvideBvnEvent.verifyBVN()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyBVN);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bvnChanged(String bvn),
    @required Result otpChanged(String otp),
    @required Result checkBVN(String fullName),
    @required Result resendOtp(String fullName),
    @required Result verifyBVN(),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return verifyBVN();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bvnChanged(String bvn),
    Result otpChanged(String otp),
    Result checkBVN(String fullName),
    Result resendOtp(String fullName),
    Result verifyBVN(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyBVN != null) {
      return verifyBVN();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bvnChanged(BvnChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result checkBVN(CheckBVN value),
    @required Result resendOtp(ResendOtp value),
    @required Result verifyBVN(VerifyBVN value),
  }) {
    assert(bvnChanged != null);
    assert(otpChanged != null);
    assert(checkBVN != null);
    assert(resendOtp != null);
    assert(verifyBVN != null);
    return verifyBVN(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bvnChanged(BvnChanged value),
    Result otpChanged(OtpChanged value),
    Result checkBVN(CheckBVN value),
    Result resendOtp(ResendOtp value),
    Result verifyBVN(VerifyBVN value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyBVN != null) {
      return verifyBVN(this);
    }
    return orElse();
  }
}

abstract class VerifyBVN implements ProvideBvnEvent {
  const factory VerifyBVN() = _$VerifyBVN;
}

/// @nodoc
class _$ProvideBvnStateTearOff {
  const _$ProvideBvnStateTearOff();

// ignore: unused_element
  _ProvideBvnState call(
      {@required String bvn,
      @required String otp,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _ProvideBvnState(
      bvn: bvn,
      otp: otp,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProvideBvnState = _$ProvideBvnStateTearOff();

/// @nodoc
mixin _$ProvideBvnState {
  String get bvn;
  String get otp;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $ProvideBvnStateCopyWith<ProvideBvnState> get copyWith;
}

/// @nodoc
abstract class $ProvideBvnStateCopyWith<$Res> {
  factory $ProvideBvnStateCopyWith(
          ProvideBvnState value, $Res Function(ProvideBvnState) then) =
      _$ProvideBvnStateCopyWithImpl<$Res>;
  $Res call(
      {String bvn,
      String otp,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class _$ProvideBvnStateCopyWithImpl<$Res>
    implements $ProvideBvnStateCopyWith<$Res> {
  _$ProvideBvnStateCopyWithImpl(this._value, this._then);

  final ProvideBvnState _value;
  // ignore: unused_field
  final $Res Function(ProvideBvnState) _then;

  @override
  $Res call({
    Object bvn = freezed,
    Object otp = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      bvn: bvn == freezed ? _value.bvn : bvn as String,
      otp: otp == freezed ? _value.otp : otp as String,
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
abstract class _$ProvideBvnStateCopyWith<$Res>
    implements $ProvideBvnStateCopyWith<$Res> {
  factory _$ProvideBvnStateCopyWith(
          _ProvideBvnState value, $Res Function(_ProvideBvnState) then) =
      __$ProvideBvnStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String bvn,
      String otp,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});
}

/// @nodoc
class __$ProvideBvnStateCopyWithImpl<$Res>
    extends _$ProvideBvnStateCopyWithImpl<$Res>
    implements _$ProvideBvnStateCopyWith<$Res> {
  __$ProvideBvnStateCopyWithImpl(
      _ProvideBvnState _value, $Res Function(_ProvideBvnState) _then)
      : super(_value, (v) => _then(v as _ProvideBvnState));

  @override
  _ProvideBvnState get _value => super._value as _ProvideBvnState;

  @override
  $Res call({
    Object bvn = freezed,
    Object otp = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_ProvideBvnState(
      bvn: bvn == freezed ? _value.bvn : bvn as String,
      otp: otp == freezed ? _value.otp : otp as String,
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
class _$_ProvideBvnState implements _ProvideBvnState {
  const _$_ProvideBvnState(
      {@required this.bvn,
      @required this.otp,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(bvn != null),
        assert(otp != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final String bvn;
  @override
  final String otp;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'ProvideBvnState(bvn: $bvn, otp: $otp, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvideBvnState &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
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
      const DeepCollectionEquality().hash(bvn) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$ProvideBvnStateCopyWith<_ProvideBvnState> get copyWith =>
      __$ProvideBvnStateCopyWithImpl<_ProvideBvnState>(this, _$identity);
}

abstract class _ProvideBvnState implements ProvideBvnState {
  const factory _ProvideBvnState(
          {@required String bvn,
          @required String otp,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_ProvideBvnState;

  @override
  String get bvn;
  @override
  String get otp;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$ProvideBvnStateCopyWith<_ProvideBvnState> get copyWith;
}
