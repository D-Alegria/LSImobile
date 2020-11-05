// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

// ignore: unused_element
  GetUserDetails getUserDetails() {
    return const GetUserDetails();
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserDetails(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserDetails(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserDetails(GetUserDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserDetails(GetUserDetails value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

/// @nodoc
abstract class $GetUserDetailsCopyWith<$Res> {
  factory $GetUserDetailsCopyWith(
          GetUserDetails value, $Res Function(GetUserDetails) then) =
      _$GetUserDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserDetailsCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements $GetUserDetailsCopyWith<$Res> {
  _$GetUserDetailsCopyWithImpl(
      GetUserDetails _value, $Res Function(GetUserDetails) _then)
      : super(_value, (v) => _then(v as GetUserDetails));

  @override
  GetUserDetails get _value => super._value as GetUserDetails;
}

/// @nodoc
class _$GetUserDetails implements GetUserDetails {
  const _$GetUserDetails();

  @override
  String toString() {
    return 'UserProfileEvent.getUserDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUserDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getUserDetails(),
  }) {
    assert(getUserDetails != null);
    return getUserDetails();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getUserDetails(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserDetails != null) {
      return getUserDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getUserDetails(GetUserDetails value),
  }) {
    assert(getUserDetails != null);
    return getUserDetails(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getUserDetails(GetUserDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getUserDetails != null) {
      return getUserDetails(this);
    }
    return orElse();
  }
}

abstract class GetUserDetails implements UserProfileEvent {
  const factory GetUserDetails() = _$GetUserDetails;
}

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

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
      {@required List<RecentTransaction> recentTransactions,
      @required UserDetailsData userData,
      @required String fullName,
      @required String investmentBalance,
      @required String profilePicture}) {
    return Loaded(
      recentTransactions: recentTransactions,
      userData: userData,
      fullName: fullName,
      investmentBalance: investmentBalance,
      profilePicture: profilePicture,
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
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(
            List<RecentTransaction> recentTransactions,
            UserDetailsData userData,
            String fullName,
            String investmentBalance,
            String profilePicture),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<RecentTransaction> recentTransactions,
        UserDetailsData userData,
        String fullName,
        String investmentBalance,
        String profilePicture),
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
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.initial()';
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
    @required
        Result loaded(
            List<RecentTransaction> recentTransactions,
            UserDetailsData userData,
            String fullName,
            String investmentBalance,
            String profilePicture),
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
    Result loaded(
        List<RecentTransaction> recentTransactions,
        UserDetailsData userData,
        String fullName,
        String investmentBalance,
        String profilePicture),
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

abstract class Initial implements UserProfileState {
  factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.loading()';
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
    @required
        Result loaded(
            List<RecentTransaction> recentTransactions,
            UserDetailsData userData,
            String fullName,
            String investmentBalance,
            String profilePicture),
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
    Result loaded(
        List<RecentTransaction> recentTransactions,
        UserDetailsData userData,
        String fullName,
        String investmentBalance,
        String profilePicture),
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

abstract class Loading implements UserProfileState {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<RecentTransaction> recentTransactions,
      UserDetailsData userData,
      String fullName,
      String investmentBalance,
      String profilePicture});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object recentTransactions = freezed,
    Object userData = freezed,
    Object fullName = freezed,
    Object investmentBalance = freezed,
    Object profilePicture = freezed,
  }) {
    return _then(Loaded(
      recentTransactions: recentTransactions == freezed
          ? _value.recentTransactions
          : recentTransactions as List<RecentTransaction>,
      userData:
          userData == freezed ? _value.userData : userData as UserDetailsData,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      investmentBalance: investmentBalance == freezed
          ? _value.investmentBalance
          : investmentBalance as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture as String,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  _$Loaded(
      {@required this.recentTransactions,
      @required this.userData,
      @required this.fullName,
      @required this.investmentBalance,
      @required this.profilePicture})
      : assert(recentTransactions != null),
        assert(userData != null),
        assert(fullName != null),
        assert(investmentBalance != null),
        assert(profilePicture != null);

  @override
  final List<RecentTransaction> recentTransactions;
  @override
  final UserDetailsData userData;
  @override
  final String fullName;
  @override
  final String investmentBalance;
  @override
  final String profilePicture;

  @override
  String toString() {
    return 'UserProfileState.loaded(recentTransactions: $recentTransactions, userData: $userData, fullName: $fullName, investmentBalance: $investmentBalance, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.recentTransactions, recentTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.recentTransactions, recentTransactions)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.investmentBalance, investmentBalance) ||
                const DeepCollectionEquality()
                    .equals(other.investmentBalance, investmentBalance)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recentTransactions) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(investmentBalance) ^
      const DeepCollectionEquality().hash(profilePicture);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(
            List<RecentTransaction> recentTransactions,
            UserDetailsData userData,
            String fullName,
            String investmentBalance,
            String profilePicture),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(recentTransactions, userData, fullName, investmentBalance,
        profilePicture);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<RecentTransaction> recentTransactions,
        UserDetailsData userData,
        String fullName,
        String investmentBalance,
        String profilePicture),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(recentTransactions, userData, fullName, investmentBalance,
          profilePicture);
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

abstract class Loaded implements UserProfileState {
  factory Loaded(
      {@required List<RecentTransaction> recentTransactions,
      @required UserDetailsData userData,
      @required String fullName,
      @required String investmentBalance,
      @required String profilePicture}) = _$Loaded;

  List<RecentTransaction> get recentTransactions;
  UserDetailsData get userData;
  String get fullName;
  String get investmentBalance;
  String get profilePicture;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.error(message: $message)';
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
    @required
        Result loaded(
            List<RecentTransaction> recentTransactions,
            UserDetailsData userData,
            String fullName,
            String investmentBalance,
            String profilePicture),
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
    Result loaded(
        List<RecentTransaction> recentTransactions,
        UserDetailsData userData,
        String fullName,
        String investmentBalance,
        String profilePicture),
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

abstract class Error implements UserProfileState {
  factory Error(String message) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}
