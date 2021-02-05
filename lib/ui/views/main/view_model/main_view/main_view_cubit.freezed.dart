// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MainViewStateTearOff {
  const _$MainViewStateTearOff();

// ignore: unused_element
  _MainViewState call(
      {@required PageController pageController, @required int currentIndex}) {
    return _MainViewState(
      pageController: pageController,
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MainViewState = _$MainViewStateTearOff();

/// @nodoc
mixin _$MainViewState {
  PageController get pageController;
  int get currentIndex;

  $MainViewStateCopyWith<MainViewState> get copyWith;
}

/// @nodoc
abstract class $MainViewStateCopyWith<$Res> {
  factory $MainViewStateCopyWith(
          MainViewState value, $Res Function(MainViewState) then) =
      _$MainViewStateCopyWithImpl<$Res>;
  $Res call({PageController pageController, int currentIndex});
}

/// @nodoc
class _$MainViewStateCopyWithImpl<$Res>
    implements $MainViewStateCopyWith<$Res> {
  _$MainViewStateCopyWithImpl(this._value, this._then);

  final MainViewState _value;
  // ignore: unused_field
  final $Res Function(MainViewState) _then;

  @override
  $Res call({
    Object pageController = freezed,
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pageController: pageController == freezed
          ? _value.pageController
          : pageController as PageController,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$MainViewStateCopyWith<$Res>
    implements $MainViewStateCopyWith<$Res> {
  factory _$MainViewStateCopyWith(
          _MainViewState value, $Res Function(_MainViewState) then) =
      __$MainViewStateCopyWithImpl<$Res>;
  @override
  $Res call({PageController pageController, int currentIndex});
}

/// @nodoc
class __$MainViewStateCopyWithImpl<$Res>
    extends _$MainViewStateCopyWithImpl<$Res>
    implements _$MainViewStateCopyWith<$Res> {
  __$MainViewStateCopyWithImpl(
      _MainViewState _value, $Res Function(_MainViewState) _then)
      : super(_value, (v) => _then(v as _MainViewState));

  @override
  _MainViewState get _value => super._value as _MainViewState;

  @override
  $Res call({
    Object pageController = freezed,
    Object currentIndex = freezed,
  }) {
    return _then(_MainViewState(
      pageController: pageController == freezed
          ? _value.pageController
          : pageController as PageController,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_MainViewState implements _MainViewState {
  _$_MainViewState({@required this.pageController, @required this.currentIndex})
      : assert(pageController != null),
        assert(currentIndex != null);

  @override
  final PageController pageController;
  @override
  final int currentIndex;

  @override
  String toString() {
    return 'MainViewState(pageController: $pageController, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainViewState &&
            (identical(other.pageController, pageController) ||
                const DeepCollectionEquality()
                    .equals(other.pageController, pageController)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageController) ^
      const DeepCollectionEquality().hash(currentIndex);

  @override
  _$MainViewStateCopyWith<_MainViewState> get copyWith =>
      __$MainViewStateCopyWithImpl<_MainViewState>(this, _$identity);
}

abstract class _MainViewState implements MainViewState {
  factory _MainViewState(
      {@required PageController pageController,
      @required int currentIndex}) = _$_MainViewState;

  @override
  PageController get pageController;
  @override
  int get currentIndex;
  @override
  _$MainViewStateCopyWith<_MainViewState> get copyWith;
}
