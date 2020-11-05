// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edu_and_employ_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EduAndEmployEventTearOff {
  const _$EduAndEmployEventTearOff();

// ignore: unused_element
  Init init(UserDetailsRequest data) {
    return Init(
      data,
    );
  }

// ignore: unused_element
  SubmitEduAndEmploy submitEduAndEmploy() {
    return const SubmitEduAndEmploy();
  }

// ignore: unused_element
  LevelOfEducationChanged levelOfEducationChanged(String levelOfEducation) {
    return LevelOfEducationChanged(
      levelOfEducation,
    );
  }

// ignore: unused_element
  EmploymentStatusChanged employmentStatusChanged(String employmentStatus) {
    return EmploymentStatusChanged(
      employmentStatus,
    );
  }

// ignore: unused_element
  WorkSectorChanged workSectorChanged(String workSector) {
    return WorkSectorChanged(
      workSector,
    );
  }

// ignore: unused_element
  EmployerNameChanged employerNameChanged(String employerName) {
    return EmployerNameChanged(
      employerName,
    );
  }

// ignore: unused_element
  StartDateChanged startDateChanged(String startDate) {
    return StartDateChanged(
      startDate,
    );
  }

// ignore: unused_element
  MonthlyIncomeChanged monthlyIncomeChanged(String monthlyIncome) {
    return MonthlyIncomeChanged(
      monthlyIncome,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EduAndEmployEvent = _$EduAndEmployEventTearOff();

/// @nodoc
mixin _$EduAndEmployEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EduAndEmployEventCopyWith<$Res> {
  factory $EduAndEmployEventCopyWith(
          EduAndEmployEvent value, $Res Function(EduAndEmployEvent) then) =
      _$EduAndEmployEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EduAndEmployEventCopyWithImpl<$Res>
    implements $EduAndEmployEventCopyWith<$Res> {
  _$EduAndEmployEventCopyWithImpl(this._value, this._then);

  final EduAndEmployEvent _value;
  // ignore: unused_field
  final $Res Function(EduAndEmployEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  $Res call({UserDetailsRequest data});

  $UserDetailsRequestCopyWith<$Res> get data;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Init(
      data == freezed ? _value.data : data as UserDetailsRequest,
    ));
  }

  @override
  $UserDetailsRequestCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $UserDetailsRequestCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$Init implements Init {
  const _$Init(this.data) : assert(data != null);

  @override
  final UserDetailsRequest data;

  @override
  String toString() {
    return 'EduAndEmployEvent.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements EduAndEmployEvent {
  const factory Init(UserDetailsRequest data) = _$Init;

  UserDetailsRequest get data;
  $InitCopyWith<Init> get copyWith;
}

/// @nodoc
abstract class $SubmitEduAndEmployCopyWith<$Res> {
  factory $SubmitEduAndEmployCopyWith(
          SubmitEduAndEmploy value, $Res Function(SubmitEduAndEmploy) then) =
      _$SubmitEduAndEmployCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitEduAndEmployCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $SubmitEduAndEmployCopyWith<$Res> {
  _$SubmitEduAndEmployCopyWithImpl(
      SubmitEduAndEmploy _value, $Res Function(SubmitEduAndEmploy) _then)
      : super(_value, (v) => _then(v as SubmitEduAndEmploy));

  @override
  SubmitEduAndEmploy get _value => super._value as SubmitEduAndEmploy;
}

/// @nodoc
class _$SubmitEduAndEmploy implements SubmitEduAndEmploy {
  const _$SubmitEduAndEmploy();

  @override
  String toString() {
    return 'EduAndEmployEvent.submitEduAndEmploy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitEduAndEmploy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return submitEduAndEmploy();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEduAndEmploy != null) {
      return submitEduAndEmploy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return submitEduAndEmploy(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitEduAndEmploy != null) {
      return submitEduAndEmploy(this);
    }
    return orElse();
  }
}

abstract class SubmitEduAndEmploy implements EduAndEmployEvent {
  const factory SubmitEduAndEmploy() = _$SubmitEduAndEmploy;
}

/// @nodoc
abstract class $LevelOfEducationChangedCopyWith<$Res> {
  factory $LevelOfEducationChangedCopyWith(LevelOfEducationChanged value,
          $Res Function(LevelOfEducationChanged) then) =
      _$LevelOfEducationChangedCopyWithImpl<$Res>;
  $Res call({String levelOfEducation});
}

/// @nodoc
class _$LevelOfEducationChangedCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $LevelOfEducationChangedCopyWith<$Res> {
  _$LevelOfEducationChangedCopyWithImpl(LevelOfEducationChanged _value,
      $Res Function(LevelOfEducationChanged) _then)
      : super(_value, (v) => _then(v as LevelOfEducationChanged));

  @override
  LevelOfEducationChanged get _value => super._value as LevelOfEducationChanged;

  @override
  $Res call({
    Object levelOfEducation = freezed,
  }) {
    return _then(LevelOfEducationChanged(
      levelOfEducation == freezed
          ? _value.levelOfEducation
          : levelOfEducation as String,
    ));
  }
}

/// @nodoc
class _$LevelOfEducationChanged implements LevelOfEducationChanged {
  const _$LevelOfEducationChanged(this.levelOfEducation)
      : assert(levelOfEducation != null);

  @override
  final String levelOfEducation;

  @override
  String toString() {
    return 'EduAndEmployEvent.levelOfEducationChanged(levelOfEducation: $levelOfEducation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LevelOfEducationChanged &&
            (identical(other.levelOfEducation, levelOfEducation) ||
                const DeepCollectionEquality()
                    .equals(other.levelOfEducation, levelOfEducation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(levelOfEducation);

  @override
  $LevelOfEducationChangedCopyWith<LevelOfEducationChanged> get copyWith =>
      _$LevelOfEducationChangedCopyWithImpl<LevelOfEducationChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return levelOfEducationChanged(levelOfEducation);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (levelOfEducationChanged != null) {
      return levelOfEducationChanged(levelOfEducation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return levelOfEducationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (levelOfEducationChanged != null) {
      return levelOfEducationChanged(this);
    }
    return orElse();
  }
}

abstract class LevelOfEducationChanged implements EduAndEmployEvent {
  const factory LevelOfEducationChanged(String levelOfEducation) =
      _$LevelOfEducationChanged;

  String get levelOfEducation;
  $LevelOfEducationChangedCopyWith<LevelOfEducationChanged> get copyWith;
}

/// @nodoc
abstract class $EmploymentStatusChangedCopyWith<$Res> {
  factory $EmploymentStatusChangedCopyWith(EmploymentStatusChanged value,
          $Res Function(EmploymentStatusChanged) then) =
      _$EmploymentStatusChangedCopyWithImpl<$Res>;
  $Res call({String employmentStatus});
}

/// @nodoc
class _$EmploymentStatusChangedCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $EmploymentStatusChangedCopyWith<$Res> {
  _$EmploymentStatusChangedCopyWithImpl(EmploymentStatusChanged _value,
      $Res Function(EmploymentStatusChanged) _then)
      : super(_value, (v) => _then(v as EmploymentStatusChanged));

  @override
  EmploymentStatusChanged get _value => super._value as EmploymentStatusChanged;

  @override
  $Res call({
    Object employmentStatus = freezed,
  }) {
    return _then(EmploymentStatusChanged(
      employmentStatus == freezed
          ? _value.employmentStatus
          : employmentStatus as String,
    ));
  }
}

/// @nodoc
class _$EmploymentStatusChanged implements EmploymentStatusChanged {
  const _$EmploymentStatusChanged(this.employmentStatus)
      : assert(employmentStatus != null);

  @override
  final String employmentStatus;

  @override
  String toString() {
    return 'EduAndEmployEvent.employmentStatusChanged(employmentStatus: $employmentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmploymentStatusChanged &&
            (identical(other.employmentStatus, employmentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.employmentStatus, employmentStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(employmentStatus);

  @override
  $EmploymentStatusChangedCopyWith<EmploymentStatusChanged> get copyWith =>
      _$EmploymentStatusChangedCopyWithImpl<EmploymentStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return employmentStatusChanged(employmentStatus);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (employmentStatusChanged != null) {
      return employmentStatusChanged(employmentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return employmentStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (employmentStatusChanged != null) {
      return employmentStatusChanged(this);
    }
    return orElse();
  }
}

abstract class EmploymentStatusChanged implements EduAndEmployEvent {
  const factory EmploymentStatusChanged(String employmentStatus) =
      _$EmploymentStatusChanged;

  String get employmentStatus;
  $EmploymentStatusChangedCopyWith<EmploymentStatusChanged> get copyWith;
}

/// @nodoc
abstract class $WorkSectorChangedCopyWith<$Res> {
  factory $WorkSectorChangedCopyWith(
          WorkSectorChanged value, $Res Function(WorkSectorChanged) then) =
      _$WorkSectorChangedCopyWithImpl<$Res>;
  $Res call({String workSector});
}

/// @nodoc
class _$WorkSectorChangedCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $WorkSectorChangedCopyWith<$Res> {
  _$WorkSectorChangedCopyWithImpl(
      WorkSectorChanged _value, $Res Function(WorkSectorChanged) _then)
      : super(_value, (v) => _then(v as WorkSectorChanged));

  @override
  WorkSectorChanged get _value => super._value as WorkSectorChanged;

  @override
  $Res call({
    Object workSector = freezed,
  }) {
    return _then(WorkSectorChanged(
      workSector == freezed ? _value.workSector : workSector as String,
    ));
  }
}

/// @nodoc
class _$WorkSectorChanged implements WorkSectorChanged {
  const _$WorkSectorChanged(this.workSector) : assert(workSector != null);

  @override
  final String workSector;

  @override
  String toString() {
    return 'EduAndEmployEvent.workSectorChanged(workSector: $workSector)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WorkSectorChanged &&
            (identical(other.workSector, workSector) ||
                const DeepCollectionEquality()
                    .equals(other.workSector, workSector)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workSector);

  @override
  $WorkSectorChangedCopyWith<WorkSectorChanged> get copyWith =>
      _$WorkSectorChangedCopyWithImpl<WorkSectorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return workSectorChanged(workSector);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workSectorChanged != null) {
      return workSectorChanged(workSector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return workSectorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workSectorChanged != null) {
      return workSectorChanged(this);
    }
    return orElse();
  }
}

abstract class WorkSectorChanged implements EduAndEmployEvent {
  const factory WorkSectorChanged(String workSector) = _$WorkSectorChanged;

  String get workSector;
  $WorkSectorChangedCopyWith<WorkSectorChanged> get copyWith;
}

/// @nodoc
abstract class $EmployerNameChangedCopyWith<$Res> {
  factory $EmployerNameChangedCopyWith(
          EmployerNameChanged value, $Res Function(EmployerNameChanged) then) =
      _$EmployerNameChangedCopyWithImpl<$Res>;
  $Res call({String employerName});
}

/// @nodoc
class _$EmployerNameChangedCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $EmployerNameChangedCopyWith<$Res> {
  _$EmployerNameChangedCopyWithImpl(
      EmployerNameChanged _value, $Res Function(EmployerNameChanged) _then)
      : super(_value, (v) => _then(v as EmployerNameChanged));

  @override
  EmployerNameChanged get _value => super._value as EmployerNameChanged;

  @override
  $Res call({
    Object employerName = freezed,
  }) {
    return _then(EmployerNameChanged(
      employerName == freezed ? _value.employerName : employerName as String,
    ));
  }
}

/// @nodoc
class _$EmployerNameChanged implements EmployerNameChanged {
  const _$EmployerNameChanged(this.employerName) : assert(employerName != null);

  @override
  final String employerName;

  @override
  String toString() {
    return 'EduAndEmployEvent.employerNameChanged(employerName: $employerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmployerNameChanged &&
            (identical(other.employerName, employerName) ||
                const DeepCollectionEquality()
                    .equals(other.employerName, employerName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(employerName);

  @override
  $EmployerNameChangedCopyWith<EmployerNameChanged> get copyWith =>
      _$EmployerNameChangedCopyWithImpl<EmployerNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return employerNameChanged(employerName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (employerNameChanged != null) {
      return employerNameChanged(employerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return employerNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (employerNameChanged != null) {
      return employerNameChanged(this);
    }
    return orElse();
  }
}

abstract class EmployerNameChanged implements EduAndEmployEvent {
  const factory EmployerNameChanged(String employerName) =
      _$EmployerNameChanged;

  String get employerName;
  $EmployerNameChangedCopyWith<EmployerNameChanged> get copyWith;
}

/// @nodoc
abstract class $StartDateChangedCopyWith<$Res> {
  factory $StartDateChangedCopyWith(
          StartDateChanged value, $Res Function(StartDateChanged) then) =
      _$StartDateChangedCopyWithImpl<$Res>;
  $Res call({String startDate});
}

/// @nodoc
class _$StartDateChangedCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $StartDateChangedCopyWith<$Res> {
  _$StartDateChangedCopyWithImpl(
      StartDateChanged _value, $Res Function(StartDateChanged) _then)
      : super(_value, (v) => _then(v as StartDateChanged));

  @override
  StartDateChanged get _value => super._value as StartDateChanged;

  @override
  $Res call({
    Object startDate = freezed,
  }) {
    return _then(StartDateChanged(
      startDate == freezed ? _value.startDate : startDate as String,
    ));
  }
}

/// @nodoc
class _$StartDateChanged implements StartDateChanged {
  const _$StartDateChanged(this.startDate) : assert(startDate != null);

  @override
  final String startDate;

  @override
  String toString() {
    return 'EduAndEmployEvent.startDateChanged(startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartDateChanged &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(startDate);

  @override
  $StartDateChangedCopyWith<StartDateChanged> get copyWith =>
      _$StartDateChangedCopyWithImpl<StartDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return startDateChanged(startDate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startDateChanged != null) {
      return startDateChanged(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return startDateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startDateChanged != null) {
      return startDateChanged(this);
    }
    return orElse();
  }
}

abstract class StartDateChanged implements EduAndEmployEvent {
  const factory StartDateChanged(String startDate) = _$StartDateChanged;

  String get startDate;
  $StartDateChangedCopyWith<StartDateChanged> get copyWith;
}

/// @nodoc
abstract class $MonthlyIncomeChangedCopyWith<$Res> {
  factory $MonthlyIncomeChangedCopyWith(MonthlyIncomeChanged value,
          $Res Function(MonthlyIncomeChanged) then) =
      _$MonthlyIncomeChangedCopyWithImpl<$Res>;
  $Res call({String monthlyIncome});
}

/// @nodoc
class _$MonthlyIncomeChangedCopyWithImpl<$Res>
    extends _$EduAndEmployEventCopyWithImpl<$Res>
    implements $MonthlyIncomeChangedCopyWith<$Res> {
  _$MonthlyIncomeChangedCopyWithImpl(
      MonthlyIncomeChanged _value, $Res Function(MonthlyIncomeChanged) _then)
      : super(_value, (v) => _then(v as MonthlyIncomeChanged));

  @override
  MonthlyIncomeChanged get _value => super._value as MonthlyIncomeChanged;

  @override
  $Res call({
    Object monthlyIncome = freezed,
  }) {
    return _then(MonthlyIncomeChanged(
      monthlyIncome == freezed ? _value.monthlyIncome : monthlyIncome as String,
    ));
  }
}

/// @nodoc
class _$MonthlyIncomeChanged implements MonthlyIncomeChanged {
  const _$MonthlyIncomeChanged(this.monthlyIncome)
      : assert(monthlyIncome != null);

  @override
  final String monthlyIncome;

  @override
  String toString() {
    return 'EduAndEmployEvent.monthlyIncomeChanged(monthlyIncome: $monthlyIncome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthlyIncomeChanged &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyIncome, monthlyIncome)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(monthlyIncome);

  @override
  $MonthlyIncomeChangedCopyWith<MonthlyIncomeChanged> get copyWith =>
      _$MonthlyIncomeChangedCopyWithImpl<MonthlyIncomeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(UserDetailsRequest data),
    @required Result submitEduAndEmploy(),
    @required Result levelOfEducationChanged(String levelOfEducation),
    @required Result employmentStatusChanged(String employmentStatus),
    @required Result workSectorChanged(String workSector),
    @required Result employerNameChanged(String employerName),
    @required Result startDateChanged(String startDate),
    @required Result monthlyIncomeChanged(String monthlyIncome),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return monthlyIncomeChanged(monthlyIncome);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(UserDetailsRequest data),
    Result submitEduAndEmploy(),
    Result levelOfEducationChanged(String levelOfEducation),
    Result employmentStatusChanged(String employmentStatus),
    Result workSectorChanged(String workSector),
    Result employerNameChanged(String employerName),
    Result startDateChanged(String startDate),
    Result monthlyIncomeChanged(String monthlyIncome),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthlyIncomeChanged != null) {
      return monthlyIncomeChanged(monthlyIncome);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result submitEduAndEmploy(SubmitEduAndEmploy value),
    @required Result levelOfEducationChanged(LevelOfEducationChanged value),
    @required Result employmentStatusChanged(EmploymentStatusChanged value),
    @required Result workSectorChanged(WorkSectorChanged value),
    @required Result employerNameChanged(EmployerNameChanged value),
    @required Result startDateChanged(StartDateChanged value),
    @required Result monthlyIncomeChanged(MonthlyIncomeChanged value),
  }) {
    assert(init != null);
    assert(submitEduAndEmploy != null);
    assert(levelOfEducationChanged != null);
    assert(employmentStatusChanged != null);
    assert(workSectorChanged != null);
    assert(employerNameChanged != null);
    assert(startDateChanged != null);
    assert(monthlyIncomeChanged != null);
    return monthlyIncomeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result submitEduAndEmploy(SubmitEduAndEmploy value),
    Result levelOfEducationChanged(LevelOfEducationChanged value),
    Result employmentStatusChanged(EmploymentStatusChanged value),
    Result workSectorChanged(WorkSectorChanged value),
    Result employerNameChanged(EmployerNameChanged value),
    Result startDateChanged(StartDateChanged value),
    Result monthlyIncomeChanged(MonthlyIncomeChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (monthlyIncomeChanged != null) {
      return monthlyIncomeChanged(this);
    }
    return orElse();
  }
}

abstract class MonthlyIncomeChanged implements EduAndEmployEvent {
  const factory MonthlyIncomeChanged(String monthlyIncome) =
      _$MonthlyIncomeChanged;

  String get monthlyIncome;
  $MonthlyIncomeChangedCopyWith<MonthlyIncomeChanged> get copyWith;
}

/// @nodoc
class _$EduAndEmployStateTearOff {
  const _$EduAndEmployStateTearOff();

// ignore: unused_element
  _EduAndEmployState call(
      {UserDetailsRequest userDetails,
      @required String levelOfEducation,
      @required String employmentStatus,
      @required String workSector,
      @required String employerName,
      @required String startDate,
      @required String monthlyIncome,
      @required List<Value> levelsOfEducation,
      @required List<Value> employmentStatuses,
      @required List<Value> workSectors,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) {
    return _EduAndEmployState(
      userDetails: userDetails,
      levelOfEducation: levelOfEducation,
      employmentStatus: employmentStatus,
      workSector: workSector,
      employerName: employerName,
      startDate: startDate,
      monthlyIncome: monthlyIncome,
      levelsOfEducation: levelsOfEducation,
      employmentStatuses: employmentStatuses,
      workSectors: workSectors,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      submitFailureOrSuccess: submitFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EduAndEmployState = _$EduAndEmployStateTearOff();

/// @nodoc
mixin _$EduAndEmployState {
  UserDetailsRequest get userDetails;
  String get levelOfEducation;
  String get employmentStatus;
  String get workSector;
  String get employerName;
  String get startDate;
  String get monthlyIncome;
  List<Value> get levelsOfEducation;
  List<Value> get employmentStatuses;
  List<Value> get workSectors;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;

  $EduAndEmployStateCopyWith<EduAndEmployState> get copyWith;
}

/// @nodoc
abstract class $EduAndEmployStateCopyWith<$Res> {
  factory $EduAndEmployStateCopyWith(
          EduAndEmployState value, $Res Function(EduAndEmployState) then) =
      _$EduAndEmployStateCopyWithImpl<$Res>;
  $Res call(
      {UserDetailsRequest userDetails,
      String levelOfEducation,
      String employmentStatus,
      String workSector,
      String employerName,
      String startDate,
      String monthlyIncome,
      List<Value> levelsOfEducation,
      List<Value> employmentStatuses,
      List<Value> workSectors,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});

  $UserDetailsRequestCopyWith<$Res> get userDetails;
}

/// @nodoc
class _$EduAndEmployStateCopyWithImpl<$Res>
    implements $EduAndEmployStateCopyWith<$Res> {
  _$EduAndEmployStateCopyWithImpl(this._value, this._then);

  final EduAndEmployState _value;
  // ignore: unused_field
  final $Res Function(EduAndEmployState) _then;

  @override
  $Res call({
    Object userDetails = freezed,
    Object levelOfEducation = freezed,
    Object employmentStatus = freezed,
    Object workSector = freezed,
    Object employerName = freezed,
    Object startDate = freezed,
    Object monthlyIncome = freezed,
    Object levelsOfEducation = freezed,
    Object employmentStatuses = freezed,
    Object workSectors = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      levelOfEducation: levelOfEducation == freezed
          ? _value.levelOfEducation
          : levelOfEducation as String,
      employmentStatus: employmentStatus == freezed
          ? _value.employmentStatus
          : employmentStatus as String,
      workSector:
          workSector == freezed ? _value.workSector : workSector as String,
      employerName: employerName == freezed
          ? _value.employerName
          : employerName as String,
      startDate: startDate == freezed ? _value.startDate : startDate as String,
      monthlyIncome: monthlyIncome == freezed
          ? _value.monthlyIncome
          : monthlyIncome as String,
      levelsOfEducation: levelsOfEducation == freezed
          ? _value.levelsOfEducation
          : levelsOfEducation as List<Value>,
      employmentStatuses: employmentStatuses == freezed
          ? _value.employmentStatuses
          : employmentStatuses as List<Value>,
      workSectors: workSectors == freezed
          ? _value.workSectors
          : workSectors as List<Value>,
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
abstract class _$EduAndEmployStateCopyWith<$Res>
    implements $EduAndEmployStateCopyWith<$Res> {
  factory _$EduAndEmployStateCopyWith(
          _EduAndEmployState value, $Res Function(_EduAndEmployState) then) =
      __$EduAndEmployStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDetailsRequest userDetails,
      String levelOfEducation,
      String employmentStatus,
      String workSector,
      String employerName,
      String startDate,
      String monthlyIncome,
      List<Value> levelsOfEducation,
      List<Value> employmentStatuses,
      List<Value> workSectors,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Glitch, Unit>> submitFailureOrSuccess});

  @override
  $UserDetailsRequestCopyWith<$Res> get userDetails;
}

/// @nodoc
class __$EduAndEmployStateCopyWithImpl<$Res>
    extends _$EduAndEmployStateCopyWithImpl<$Res>
    implements _$EduAndEmployStateCopyWith<$Res> {
  __$EduAndEmployStateCopyWithImpl(
      _EduAndEmployState _value, $Res Function(_EduAndEmployState) _then)
      : super(_value, (v) => _then(v as _EduAndEmployState));

  @override
  _EduAndEmployState get _value => super._value as _EduAndEmployState;

  @override
  $Res call({
    Object userDetails = freezed,
    Object levelOfEducation = freezed,
    Object employmentStatus = freezed,
    Object workSector = freezed,
    Object employerName = freezed,
    Object startDate = freezed,
    Object monthlyIncome = freezed,
    Object levelsOfEducation = freezed,
    Object employmentStatuses = freezed,
    Object workSectors = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccess = freezed,
  }) {
    return _then(_EduAndEmployState(
      userDetails: userDetails == freezed
          ? _value.userDetails
          : userDetails as UserDetailsRequest,
      levelOfEducation: levelOfEducation == freezed
          ? _value.levelOfEducation
          : levelOfEducation as String,
      employmentStatus: employmentStatus == freezed
          ? _value.employmentStatus
          : employmentStatus as String,
      workSector:
          workSector == freezed ? _value.workSector : workSector as String,
      employerName: employerName == freezed
          ? _value.employerName
          : employerName as String,
      startDate: startDate == freezed ? _value.startDate : startDate as String,
      monthlyIncome: monthlyIncome == freezed
          ? _value.monthlyIncome
          : monthlyIncome as String,
      levelsOfEducation: levelsOfEducation == freezed
          ? _value.levelsOfEducation
          : levelsOfEducation as List<Value>,
      employmentStatuses: employmentStatuses == freezed
          ? _value.employmentStatuses
          : employmentStatuses as List<Value>,
      workSectors: workSectors == freezed
          ? _value.workSectors
          : workSectors as List<Value>,
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
class _$_EduAndEmployState implements _EduAndEmployState {
  const _$_EduAndEmployState(
      {this.userDetails,
      @required this.levelOfEducation,
      @required this.employmentStatus,
      @required this.workSector,
      @required this.employerName,
      @required this.startDate,
      @required this.monthlyIncome,
      @required this.levelsOfEducation,
      @required this.employmentStatuses,
      @required this.workSectors,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccess})
      : assert(levelOfEducation != null),
        assert(employmentStatus != null),
        assert(workSector != null),
        assert(employerName != null),
        assert(startDate != null),
        assert(monthlyIncome != null),
        assert(levelsOfEducation != null),
        assert(employmentStatuses != null),
        assert(workSectors != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(submitFailureOrSuccess != null);

  @override
  final UserDetailsRequest userDetails;
  @override
  final String levelOfEducation;
  @override
  final String employmentStatus;
  @override
  final String workSector;
  @override
  final String employerName;
  @override
  final String startDate;
  @override
  final String monthlyIncome;
  @override
  final List<Value> levelsOfEducation;
  @override
  final List<Value> employmentStatuses;
  @override
  final List<Value> workSectors;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Glitch, Unit>> submitFailureOrSuccess;

  @override
  String toString() {
    return 'EduAndEmployState(userDetails: $userDetails, levelOfEducation: $levelOfEducation, employmentStatus: $employmentStatus, workSector: $workSector, employerName: $employerName, startDate: $startDate, monthlyIncome: $monthlyIncome, levelsOfEducation: $levelsOfEducation, employmentStatuses: $employmentStatuses, workSectors: $workSectors, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, submitFailureOrSuccess: $submitFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EduAndEmployState &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.levelOfEducation, levelOfEducation) ||
                const DeepCollectionEquality()
                    .equals(other.levelOfEducation, levelOfEducation)) &&
            (identical(other.employmentStatus, employmentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.employmentStatus, employmentStatus)) &&
            (identical(other.workSector, workSector) ||
                const DeepCollectionEquality()
                    .equals(other.workSector, workSector)) &&
            (identical(other.employerName, employerName) ||
                const DeepCollectionEquality()
                    .equals(other.employerName, employerName)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyIncome, monthlyIncome)) &&
            (identical(other.levelsOfEducation, levelsOfEducation) ||
                const DeepCollectionEquality()
                    .equals(other.levelsOfEducation, levelsOfEducation)) &&
            (identical(other.employmentStatuses, employmentStatuses) ||
                const DeepCollectionEquality()
                    .equals(other.employmentStatuses, employmentStatuses)) &&
            (identical(other.workSectors, workSectors) ||
                const DeepCollectionEquality()
                    .equals(other.workSectors, workSectors)) &&
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
      const DeepCollectionEquality().hash(userDetails) ^
      const DeepCollectionEquality().hash(levelOfEducation) ^
      const DeepCollectionEquality().hash(employmentStatus) ^
      const DeepCollectionEquality().hash(workSector) ^
      const DeepCollectionEquality().hash(employerName) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(monthlyIncome) ^
      const DeepCollectionEquality().hash(levelsOfEducation) ^
      const DeepCollectionEquality().hash(employmentStatuses) ^
      const DeepCollectionEquality().hash(workSectors) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccess);

  @override
  _$EduAndEmployStateCopyWith<_EduAndEmployState> get copyWith =>
      __$EduAndEmployStateCopyWithImpl<_EduAndEmployState>(this, _$identity);
}

abstract class _EduAndEmployState implements EduAndEmployState {
  const factory _EduAndEmployState(
          {UserDetailsRequest userDetails,
          @required String levelOfEducation,
          @required String employmentStatus,
          @required String workSector,
          @required String employerName,
          @required String startDate,
          @required String monthlyIncome,
          @required List<Value> levelsOfEducation,
          @required List<Value> employmentStatuses,
          @required List<Value> workSectors,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<Glitch, Unit>> submitFailureOrSuccess}) =
      _$_EduAndEmployState;

  @override
  UserDetailsRequest get userDetails;
  @override
  String get levelOfEducation;
  @override
  String get employmentStatus;
  @override
  String get workSector;
  @override
  String get employerName;
  @override
  String get startDate;
  @override
  String get monthlyIncome;
  @override
  List<Value> get levelsOfEducation;
  @override
  List<Value> get employmentStatuses;
  @override
  List<Value> get workSectors;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Glitch, Unit>> get submitFailureOrSuccess;
  @override
  _$EduAndEmployStateCopyWith<_EduAndEmployState> get copyWith;
}
