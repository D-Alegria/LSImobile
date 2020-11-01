// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'accounts_cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountsCardsEventTearOff {
  const _$AccountsCardsEventTearOff();

// ignore: unused_element
  GetUserBankDetails getUserBankDetails() {
    return const GetUserBankDetails();
  }
}

/// @nodoc
// ignore: unused_element
const $AccountsCardsEvent = _$AccountsCardsEventTearOff();

/// @nodoc
mixin _$AccountsCardsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserBankDetails(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserBankDetails(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserBankDetails(GetUserBankDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserBankDetails(GetUserBankDetails value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccountsCardsEventCopyWith<$Res> {
  factory $AccountsCardsEventCopyWith(
          AccountsCardsEvent value, $Res Function(AccountsCardsEvent) then) =
      _$AccountsCardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsCardsEventCopyWithImpl<$Res>
    implements $AccountsCardsEventCopyWith<$Res> {
  _$AccountsCardsEventCopyWithImpl(this._value, this._then);

  final AccountsCardsEvent _value;
  // ignore: unused_field
  final $Res Function(AccountsCardsEvent) _then;
}

/// @nodoc
abstract class $GetUserBankDetailsCopyWith<$Res> {
  factory $GetUserBankDetailsCopyWith(
          GetUserBankDetails value, $Res Function(GetUserBankDetails) then) =
      _$GetUserBankDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserBankDetailsCopyWithImpl<$Res>
    extends _$AccountsCardsEventCopyWithImpl<$Res>
    implements $GetUserBankDetailsCopyWith<$Res> {
  _$GetUserBankDetailsCopyWithImpl(
      GetUserBankDetails _value, $Res Function(GetUserBankDetails) _then)
      : super(_value, (v) => _then(v as GetUserBankDetails));

  @override
  GetUserBankDetails get _value => super._value as GetUserBankDetails;
}

/// @nodoc
class _$GetUserBankDetails implements GetUserBankDetails {
  const _$GetUserBankDetails();

  @override
  String toString() {
    return 'AccountsCardsEvent.getUserBankDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUserBankDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserBankDetails(),
  }) {
    assert(getUserBankDetails != null);
    return getUserBankDetails();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserBankDetails(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserBankDetails != null) {
      return getUserBankDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserBankDetails(GetUserBankDetails value),
  }) {
    assert(getUserBankDetails != null);
    return getUserBankDetails(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserBankDetails(GetUserBankDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserBankDetails != null) {
      return getUserBankDetails(this);
    }
    return orElse();
  }
}

abstract class GetUserBankDetails implements AccountsCardsEvent {
  const factory GetUserBankDetails() = _$GetUserBankDetails;
}

/// @nodoc
class _$AccountsCardsStateTearOff {
  const _$AccountsCardsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return Initial();
  }

// ignore: unused_element
  Loading loading() {
    return Loading();
  }

// ignore: unused_element
  Loaded loaded(
      {@required List<Account> accounts, @required List<Card> cards}) {
    return Loaded(
      accounts: accounts,
      cards: cards,
    );
  }

// ignore: unused_element
  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountsCardsState = _$AccountsCardsStateTearOff();

/// @nodoc
mixin _$AccountsCardsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Account> accounts, List<Card> cards),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Account> accounts, List<Card> cards),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AccountsCardsStateCopyWith<$Res> {
  factory $AccountsCardsStateCopyWith(
          AccountsCardsState value, $Res Function(AccountsCardsState) then) =
      _$AccountsCardsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsCardsStateCopyWithImpl<$Res>
    implements $AccountsCardsStateCopyWith<$Res> {
  _$AccountsCardsStateCopyWithImpl(this._value, this._then);

  final AccountsCardsState _value;
  // ignore: unused_field
  final $Res Function(AccountsCardsState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AccountsCardsStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  _$Initial();

  @override
  String toString() {
    return 'AccountsCardsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Account> accounts, List<Card> cards),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Account> accounts, List<Card> cards),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AccountsCardsState {
  factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$AccountsCardsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  _$Loading();

  @override
  String toString() {
    return 'AccountsCardsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Account> accounts, List<Card> cards),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Account> accounts, List<Card> cards),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AccountsCardsState {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Account> accounts, List<Card> cards});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$AccountsCardsStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object accounts = freezed,
    Object cards = freezed,
  }) {
    return _then(Loaded(
      accounts:
          accounts == freezed ? _value.accounts : accounts as List<Account>,
      cards: cards == freezed ? _value.cards : cards as List<Card>,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  _$Loaded({@required this.accounts, @required this.cards})
      : assert(accounts != null),
        assert(cards != null);

  @override
  final List<Account> accounts;
  @override
  final List<Card> cards;

  @override
  String toString() {
    return 'AccountsCardsState.loaded(accounts: $accounts, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(cards);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Account> accounts, List<Card> cards),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(accounts, cards);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Account> accounts, List<Card> cards),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(accounts, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements AccountsCardsState {
  factory Loaded(
      {@required List<Account> accounts,
      @required List<Card> cards}) = _$Loaded;

  List<Account> get accounts;
  List<Card> get cards;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$AccountsCardsStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  _$Error(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AccountsCardsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Account> accounts, List<Card> cards),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Account> accounts, List<Card> cards),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements AccountsCardsState {
  factory Error(String message) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}
