// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'residence_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResidenceFormStateTearOff {
  const _$ResidenceFormStateTearOff();

// ignore: unused_element
  _ResidenceFormState call(
      {UserDetailsRequest userDetails,
      @required String typeOfResidence,
      @required String currentAddress,
      @required String state,
      @required String lga,
      @required String stayPeriod,
      @required List<Value> residences,
      @required List<Value> states,
      @required List<Value> lgas,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required bool isEdited,
      @required Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess}) {
    return _ResidenceFormState(
      userDetails: userDetails,
      typeOfResidence: typeOfResidence,
      currentAddress: currentAddress,
      state: state,
      lga: lga,
      stayPeriod: stayPeriod,
      residences: residences,
      states: states,
      lgas: lgas,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      isEdited: isEdited,
      submitResidenceFailureOrSuccess: submitResidenceFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResidenceFormState = _$ResidenceFormStateTearOff();

/// @nodoc
mixin _$ResidenceFormState {
  UserDetailsRequest get userDetails;
  String get typeOfResidence;
  String get currentAddress;
  String get state;
  String get lga;
  String get stayPeriod;
  List<Value> get residences;
  List<Value> get states;
  List<Value> get lgas;
  bool get showErrorMessages;
  bool get isSubmitting;
  bool get isEdited;
  Option<Either<Glitch, Unit>> get submitResidenceFailureOrSuccess;

  $ResidenceFormStateCopyWith<ResidenceFormState> get copyWith;
}

/// @nodoc
abstract class $ResidenceFormStateCopyWith<$Res> {
  factory $ResidenceFormStateCopyWith(
          ResidenceFormState value, $Res Function(ResidenceFormState) then) =
      _$ResidenceFormStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsRequest userDetails,
      String typeOfResidence,
      String currentAddress,
      String state,
      String lga,
      String stayPeriod,
      List<Value> residences,
      List<Value> states,
      List<Value> lgas,
      bool showErrorMessages,
      bool isSubmitting,
      bool isEdited,
      Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess});

  $UserDetailsRequestCopyWith<$Res> get userDetails;
}

/// @nodoc
class _$ResidenceFormStateCopyWithImpl<$Res>
    implements $ResidenceFormStateCopyWith<$Res> {
  _$ResidenceFormStateCopyWithImpl(this._value, this._then);

  final ResidenceFormState _value;
  // ignore: unused_field
  final $Res Function(ResidenceFormState) _then;

  @override
  $Res call({
    Object userDetails = freezed,
    Object typeOfResidence = freezed,
    Object currentAddress = freezed,
    Object state = freezed,
    Object lga = freezed,
    Object stayPeriod = freezed,
    Object residences = freezed,
    Object states = freezed,
    Object lgas = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object isEdited = freezed,
    Object submitResidenceFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      typeOfResidence: typeOfResidence == freezed
          ? _value.typeOfResidence
          : typeOfResidence as String,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress as String,
      state: state == freezed ? _value.state : state as String,
      lga: lga == freezed ? _value.lga : lga as String,
      stayPeriod:
          stayPeriod == freezed ? _value.stayPeriod : stayPeriod as String,
      residences:
          residences == freezed ? _value.residences : residences as List<Value>,
      states: states == freezed ? _value.states : states as List<Value>,
      lgas: lgas == freezed ? _value.lgas : lgas as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isEdited: isEdited == freezed ? _value.isEdited : isEdited as bool,
      submitResidenceFailureOrSuccess:
          submitResidenceFailureOrSuccess == freezed
              ? _value.submitResidenceFailureOrSuccess
              : submitResidenceFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails {
    if (_value.userDetails == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value));
    });
  }
}

/// @nodoc
abstract class _$ResidenceFormStateCopyWith<$Res>
    implements $ResidenceFormStateCopyWith<$Res> {
  factory _$ResidenceFormStateCopyWith(
          _ResidenceFormState value, $Res Function(_ResidenceFormState) then) =
      __$ResidenceFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDetailsRequest userDetails,
      String typeOfResidence,
      String currentAddress,
      String state,
      String lga,
      String stayPeriod,
      List<Value> residences,
      List<Value> states,
      List<Value> lgas,
      bool showErrorMessages,
      bool isSubmitting,
      bool isEdited,
      Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess});

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails;
}

/// @nodoc
class __$ResidenceFormStateCopyWithImpl<$Res>
    extends _$ResidenceFormStateCopyWithImpl<$Res>
    implements _$ResidenceFormStateCopyWith<$Res> {
  __$ResidenceFormStateCopyWithImpl(
      _ResidenceFormState _value, $Res Function(_ResidenceFormState) _then)
      : super(_value, (v) => _then(v as _ResidenceFormState));

  @override
  _ResidenceFormState get _value => super._value as _ResidenceFormState;

  @override
  $Res call({
    Object userDetails = freezed,
    Object typeOfResidence = freezed,
    Object currentAddress = freezed,
    Object state = freezed,
    Object lga = freezed,
    Object stayPeriod = freezed,
    Object residences = freezed,
    Object states = freezed,
    Object lgas = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object isEdited = freezed,
    Object submitResidenceFailureOrSuccess = freezed,
  }) {
    return _then(_ResidenceFormState(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      typeOfResidence: typeOfResidence == freezed
          ? _value.typeOfResidence
          : typeOfResidence as String,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress as String,
      state: state == freezed ? _value.state : state as String,
      lga: lga == freezed ? _value.lga : lga as String,
      stayPeriod:
          stayPeriod == freezed ? _value.stayPeriod : stayPeriod as String,
      residences:
          residences == freezed ? _value.residences : residences as List<Value>,
      states: states == freezed ? _value.states : states as List<Value>,
      lgas: lgas == freezed ? _value.lgas : lgas as List<Value>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isEdited: isEdited == freezed ? _value.isEdited : isEdited as bool,
      submitResidenceFailureOrSuccess:
          submitResidenceFailureOrSuccess == freezed
              ? _value.submitResidenceFailureOrSuccess
              : submitResidenceFailureOrSuccess as Option<Either<Glitch, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ResidenceFormState implements _ResidenceFormState {
  const _$_ResidenceFormState(
      {this.userDetails,
      @required this.typeOfResidence,
      @required this.currentAddress,
      @required this.state,
      @required this.lga,
      @required this.stayPeriod,
      @required this.residences,
      @required this.states,
      @required this.lgas,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.isEdited,
      @required this.submitResidenceFailureOrSuccess})
      : assert(typeOfResidence != null),
        assert(currentAddress != null),
        assert(state != null),
        assert(lga != null),
        assert(stayPeriod != null),
        assert(residences != null),
        assert(states != null),
        assert(lgas != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(isEdited != null),
        assert(submitResidenceFailureOrSuccess != null);

  @override
  final UserDetailsRequest userDetails;
  @override
  final String typeOfResidence;
  @override
  final String currentAddress;
  @override
  final String state;
  @override
  final String lga;
  @override
  final String stayPeriod;
  @override
  final List<Value> residences;
  @override
  final List<Value> states;
  @override
  final List<Value> lgas;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isEdited;
  @override
  final Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess;

  @override
  String toString() {
    return 'ResidenceFormState(userDetails: $userDetails, typeOfResidence: $typeOfResidence, currentAddress: $currentAddress, state: $state, lga: $lga, stayPeriod: $stayPeriod, residences: $residences, states: $states, lgas: $lgas, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isEdited: $isEdited, submitResidenceFailureOrSuccess: $submitResidenceFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResidenceFormState &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.typeOfResidence, typeOfResidence) ||
                const DeepCollectionEquality()
                    .equals(other.typeOfResidence, typeOfResidence)) &&
            (identical(other.currentAddress, currentAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentAddress, currentAddress)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.lga, lga) ||
                const DeepCollectionEquality().equals(other.lga, lga)) &&
            (identical(other.stayPeriod, stayPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.stayPeriod, stayPeriod)) &&
            (identical(other.residences, residences) ||
                const DeepCollectionEquality()
                    .equals(other.residences, residences)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.lgas, lgas) ||
                const DeepCollectionEquality().equals(other.lgas, lgas)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isEdited, isEdited) ||
                const DeepCollectionEquality()
                    .equals(other.isEdited, isEdited)) &&
            (identical(other.submitResidenceFailureOrSuccess,
                    submitResidenceFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.submitResidenceFailureOrSuccess,
                    submitResidenceFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userDetails) ^
      const DeepCollectionEquality().hash(typeOfResidence) ^
      const DeepCollectionEquality().hash(currentAddress) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(lga) ^
      const DeepCollectionEquality().hash(stayPeriod) ^
      const DeepCollectionEquality().hash(residences) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(lgas) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isEdited) ^
      const DeepCollectionEquality().hash(submitResidenceFailureOrSuccess);

  @override
  _$ResidenceFormStateCopyWith<_ResidenceFormState> get copyWith =>
      __$ResidenceFormStateCopyWithImpl<_ResidenceFormState>(this, _$identity);
}

abstract class _ResidenceFormState implements ResidenceFormState {
  const factory _ResidenceFormState(
          {UserDetailsRequest userDetails,
          @required
              String typeOfResidence,
          @required
              String currentAddress,
          @required
              String state,
          @required
              String lga,
          @required
              String stayPeriod,
          @required
              List<Value> residences,
          @required
              List<Value> states,
          @required
              List<Value> lgas,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              bool isEdited,
          @required
              Option<Either<Glitch, Unit>> submitResidenceFailureOrSuccess}) =
      _$_ResidenceFormState;

  @override
  UserDetailsRequest get userDetails;
  @override
  String get typeOfResidence;
  @override
  String get currentAddress;
  @override
  String get state;
  @override
  String get lga;
  @override
  String get stayPeriod;
  @override
  List<Value> get residences;
  @override
  List<Value> get states;
  @override
  List<Value> get lgas;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isEdited;
  @override
  Option<Either<Glitch, Unit>> get submitResidenceFailureOrSuccess;
  @override
  _$ResidenceFormStateCopyWith<_ResidenceFormState> get copyWith;
}
