// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthViewStateTearOff {
  const _$AuthViewStateTearOff();

// ignore: unused_element
  ShowLoginView showLoginView(bool showLogin) {
    return ShowLoginView(
      showLogin,
    );
  }
}

// ignore: unused_element
const $AuthViewState = _$AuthViewStateTearOff();

mixin _$AuthViewState {
  bool get showLogin;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showLoginView(bool showLogin),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showLoginView(bool showLogin),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showLoginView(ShowLoginView value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showLoginView(ShowLoginView value),
    @required Result orElse(),
  });

  $AuthViewStateCopyWith<AuthViewState> get copyWith;
}

abstract class $AuthViewStateCopyWith<$Res> {
  factory $AuthViewStateCopyWith(
          AuthViewState value, $Res Function(AuthViewState) then) =
      _$AuthViewStateCopyWithImpl<$Res>;
  $Res call({bool showLogin});
}

class _$AuthViewStateCopyWithImpl<$Res>
    implements $AuthViewStateCopyWith<$Res> {
  _$AuthViewStateCopyWithImpl(this._value, this._then);

  final AuthViewState _value;
  // ignore: unused_field
  final $Res Function(AuthViewState) _then;

  @override
  $Res call({
    Object showLogin = freezed,
  }) {
    return _then(_value.copyWith(
      showLogin: showLogin == freezed ? _value.showLogin : showLogin as bool,
    ));
  }
}

abstract class $ShowLoginViewCopyWith<$Res>
    implements $AuthViewStateCopyWith<$Res> {
  factory $ShowLoginViewCopyWith(
          ShowLoginView value, $Res Function(ShowLoginView) then) =
      _$ShowLoginViewCopyWithImpl<$Res>;
  @override
  $Res call({bool showLogin});
}

class _$ShowLoginViewCopyWithImpl<$Res>
    extends _$AuthViewStateCopyWithImpl<$Res>
    implements $ShowLoginViewCopyWith<$Res> {
  _$ShowLoginViewCopyWithImpl(
      ShowLoginView _value, $Res Function(ShowLoginView) _then)
      : super(_value, (v) => _then(v as ShowLoginView));

  @override
  ShowLoginView get _value => super._value as ShowLoginView;

  @override
  $Res call({
    Object showLogin = freezed,
  }) {
    return _then(ShowLoginView(
      showLogin == freezed ? _value.showLogin : showLogin as bool,
    ));
  }
}

class _$ShowLoginView implements ShowLoginView {
  _$ShowLoginView(this.showLogin) : assert(showLogin != null);

  @override
  final bool showLogin;

  @override
  String toString() {
    return 'AuthViewState.showLoginView(showLogin: $showLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowLoginView &&
            (identical(other.showLogin, showLogin) ||
                const DeepCollectionEquality()
                    .equals(other.showLogin, showLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showLogin);

  @override
  $ShowLoginViewCopyWith<ShowLoginView> get copyWith =>
      _$ShowLoginViewCopyWithImpl<ShowLoginView>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result showLoginView(bool showLogin),
  }) {
    assert(showLoginView != null);
    return showLoginView(showLogin);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result showLoginView(bool showLogin),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showLoginView != null) {
      return showLoginView(showLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result showLoginView(ShowLoginView value),
  }) {
    assert(showLoginView != null);
    return showLoginView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result showLoginView(ShowLoginView value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showLoginView != null) {
      return showLoginView(this);
    }
    return orElse();
  }
}

abstract class ShowLoginView implements AuthViewState {
  factory ShowLoginView(bool showLogin) = _$ShowLoginView;

  @override
  bool get showLogin;
  @override
  $ShowLoginViewCopyWith<ShowLoginView> get copyWith;
}
