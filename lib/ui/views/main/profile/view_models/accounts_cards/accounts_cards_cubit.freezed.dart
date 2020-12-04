// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'accounts_cards_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountsCardsStateTearOff {
  const _$AccountsCardsStateTearOff();

// ignore: unused_element
  _AccountsCardsState call(
      {@required List<Account> accounts,
      @required List<Card> cards,
      @required bool isLoading,
      @required Option<Either<Glitch, Unit>> failureOrSuccess}) {
    return _AccountsCardsState(
      accounts: accounts,
      cards: cards,
      isLoading: isLoading,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountsCardsState = _$AccountsCardsStateTearOff();

/// @nodoc
mixin _$AccountsCardsState {
  List<Account> get accounts;
  List<Card> get cards;
  bool get isLoading;
  Option<Either<Glitch, Unit>> get failureOrSuccess;

  $AccountsCardsStateCopyWith<AccountsCardsState> get copyWith;
}

/// @nodoc
abstract class $AccountsCardsStateCopyWith<$Res> {
  factory $AccountsCardsStateCopyWith(
          AccountsCardsState value, $Res Function(AccountsCardsState) then) =
      _$AccountsCardsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Account> accounts,
      List<Card> cards,
      bool isLoading,
      Option<Either<Glitch, Unit>> failureOrSuccess});
}

/// @nodoc
class _$AccountsCardsStateCopyWithImpl<$Res>
    implements $AccountsCardsStateCopyWith<$Res> {
  _$AccountsCardsStateCopyWithImpl(this._value, this._then);

  final AccountsCardsState _value;
  // ignore: unused_field
  final $Res Function(AccountsCardsState) _then;

  @override
  $Res call({
    Object accounts = freezed,
    Object cards = freezed,
    Object isLoading = freezed,
    Object failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      accounts:
          accounts == freezed ? _value.accounts : accounts as List<Account>,
      cards: cards == freezed ? _value.cards : cards as List<Card>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AccountsCardsStateCopyWith<$Res>
    implements $AccountsCardsStateCopyWith<$Res> {
  factory _$AccountsCardsStateCopyWith(
          _AccountsCardsState value, $Res Function(_AccountsCardsState) then) =
      __$AccountsCardsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Account> accounts,
      List<Card> cards,
      bool isLoading,
      Option<Either<Glitch, Unit>> failureOrSuccess});
}

/// @nodoc
class __$AccountsCardsStateCopyWithImpl<$Res>
    extends _$AccountsCardsStateCopyWithImpl<$Res>
    implements _$AccountsCardsStateCopyWith<$Res> {
  __$AccountsCardsStateCopyWithImpl(
      _AccountsCardsState _value, $Res Function(_AccountsCardsState) _then)
      : super(_value, (v) => _then(v as _AccountsCardsState));

  @override
  _AccountsCardsState get _value => super._value as _AccountsCardsState;

  @override
  $Res call({
    Object accounts = freezed,
    Object cards = freezed,
    Object isLoading = freezed,
    Object failureOrSuccess = freezed,
  }) {
    return _then(_AccountsCardsState(
      accounts:
          accounts == freezed ? _value.accounts : accounts as List<Account>,
      cards: cards == freezed ? _value.cards : cards as List<Card>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AccountsCardsState implements _AccountsCardsState {
  const _$_AccountsCardsState(
      {@required this.accounts,
      @required this.cards,
      @required this.isLoading,
      @required this.failureOrSuccess})
      : assert(accounts != null),
        assert(cards != null),
        assert(isLoading != null),
        assert(failureOrSuccess != null);

  @override
  final List<Account> accounts;
  @override
  final List<Card> cards;
  @override
  final bool isLoading;
  @override
  final Option<Either<Glitch, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'AccountsCardsState(accounts: $accounts, cards: $cards, isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountsCardsState &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @override
  _$AccountsCardsStateCopyWith<_AccountsCardsState> get copyWith =>
      __$AccountsCardsStateCopyWithImpl<_AccountsCardsState>(this, _$identity);
}

abstract class _AccountsCardsState implements AccountsCardsState {
  const factory _AccountsCardsState(
          {@required List<Account> accounts,
          @required List<Card> cards,
          @required bool isLoading,
          @required Option<Either<Glitch, Unit>> failureOrSuccess}) =
      _$_AccountsCardsState;

  @override
  List<Account> get accounts;
  @override
  List<Card> get cards;
  @override
  bool get isLoading;
  @override
  Option<Either<Glitch, Unit>> get failureOrSuccess;
  @override
  _$AccountsCardsStateCopyWith<_AccountsCardsState> get copyWith;
}
