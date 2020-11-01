// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_details_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDetailsRequest _$UserDetailsRequestFromJson(Map<String, dynamic> json) {
  return _UserDetailsRequest.fromJson(json);
}

/// @nodoc
class _$UserDetailsRequestTearOff {
  const _$UserDetailsRequestTearOff();

// ignore: unused_element
  _UserDetailsRequest call(
      {@nullable
          String token,
      @nullable
          Profile profile,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
          Education education,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
          Facebook facebook,
      @nullable
          Twitter twitter,
      @nullable
          Linkedin linkedin,
      @nullable
          BVN bvn,
      @nullable
          Remita remita,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<dynamic> directors,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'operating_expenses')
          OperatingExpenses operatingExpenses,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'idcard')
          IdCard idCard}) {
    return _UserDetailsRequest(
      token: token,
      profile: profile,
      nextOfKin: nextOfKin,
      education: education,
      homeAddress: homeAddress,
      work: work,
      expenses: expenses,
      facebook: facebook,
      twitter: twitter,
      linkedin: linkedin,
      bvn: bvn,
      remita: remita,
      companyProfile: companyProfile,
      directors: directors,
      businessIncome: businessIncome,
      operatingExpenses: operatingExpenses,
      businessAddress: businessAddress,
      idCard: idCard,
    );
  }

// ignore: unused_element
  UserDetailsRequest fromJson(Map<String, Object> json) {
    return UserDetailsRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDetailsRequest = _$UserDetailsRequestTearOff();

/// @nodoc
mixin _$UserDetailsRequest {
  @nullable
  String get token;
  @nullable
  Profile get profile;
  @nullable
  @JsonKey(name: 'next_of_kin')
  NextOfKin get nextOfKin;
  @nullable
  Education get education;
  @nullable
  @JsonKey(name: 'home_address')
  HomeAddress get homeAddress;
  @nullable
  Work get work;
  @nullable
  Expenses get expenses;
  @nullable
  Facebook get facebook;
  @nullable
  Twitter get twitter;
  @nullable
  Linkedin get linkedin;
  @nullable
  BVN get bvn;
  @nullable
  Remita get remita;
  @nullable
  @JsonKey(name: 'company_profile')
  CompanyProfile get companyProfile;
  @nullable
  List<dynamic> get directors;
  @nullable
  @JsonKey(name: 'business_income')
  BusinessIncome get businessIncome;
  @nullable
  @JsonKey(name: 'operating_expenses')
  OperatingExpenses get operatingExpenses;
  @nullable
  @JsonKey(name: 'business_address')
  BusinessAddress get businessAddress;
  @nullable
  @JsonKey(name: 'idcard')
  IdCard get idCard;

  Map<String, dynamic> toJson();
  $UserDetailsRequestCopyWith<UserDetailsRequest> get copyWith;
}

/// @nodoc
abstract class $UserDetailsRequestCopyWith<$Res> {
  factory $UserDetailsRequestCopyWith(
          UserDetailsRequest value, $Res Function(UserDetailsRequest) then) =
      _$UserDetailsRequestCopyWithImpl<$Res>;
  $Res call(
      {@nullable
          String token,
      @nullable
          Profile profile,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
          Education education,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
          Facebook facebook,
      @nullable
          Twitter twitter,
      @nullable
          Linkedin linkedin,
      @nullable
          BVN bvn,
      @nullable
          Remita remita,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<dynamic> directors,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'operating_expenses')
          OperatingExpenses operatingExpenses,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'idcard')
          IdCard idCard});

  $ProfileCopyWith<$Res> get profile;
  $NextOfKinCopyWith<$Res> get nextOfKin;
  $EducationCopyWith<$Res> get education;
  $HomeAddressCopyWith<$Res> get homeAddress;
  $WorkCopyWith<$Res> get work;
  $ExpensesCopyWith<$Res> get expenses;
  $FacebookCopyWith<$Res> get facebook;
  $TwitterCopyWith<$Res> get twitter;
  $LinkedinCopyWith<$Res> get linkedin;
  $BVNCopyWith<$Res> get bvn;
  $RemitaCopyWith<$Res> get remita;
  $CompanyProfileCopyWith<$Res> get companyProfile;
  $BusinessIncomeCopyWith<$Res> get businessIncome;
  $OperatingExpensesCopyWith<$Res> get operatingExpenses;
  $BusinessAddressCopyWith<$Res> get businessAddress;
  $IdCardCopyWith<$Res> get idCard;
}

/// @nodoc
class _$UserDetailsRequestCopyWithImpl<$Res>
    implements $UserDetailsRequestCopyWith<$Res> {
  _$UserDetailsRequestCopyWithImpl(this._value, this._then);

  final UserDetailsRequest _value;
  // ignore: unused_field
  final $Res Function(UserDetailsRequest) _then;

  @override
  $Res call({
    Object token = freezed,
    Object profile = freezed,
    Object nextOfKin = freezed,
    Object education = freezed,
    Object homeAddress = freezed,
    Object work = freezed,
    Object expenses = freezed,
    Object facebook = freezed,
    Object twitter = freezed,
    Object linkedin = freezed,
    Object bvn = freezed,
    Object remita = freezed,
    Object companyProfile = freezed,
    Object directors = freezed,
    Object businessIncome = freezed,
    Object operatingExpenses = freezed,
    Object businessAddress = freezed,
    Object idCard = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      profile: profile == freezed ? _value.profile : profile as Profile,
      nextOfKin:
          nextOfKin == freezed ? _value.nextOfKin : nextOfKin as NextOfKin,
      education:
          education == freezed ? _value.education : education as Education,
      homeAddress: homeAddress == freezed
          ? _value.homeAddress
          : homeAddress as HomeAddress,
      work: work == freezed ? _value.work : work as Work,
      expenses: expenses == freezed ? _value.expenses : expenses as Expenses,
      facebook: facebook == freezed ? _value.facebook : facebook as Facebook,
      twitter: twitter == freezed ? _value.twitter : twitter as Twitter,
      linkedin: linkedin == freezed ? _value.linkedin : linkedin as Linkedin,
      bvn: bvn == freezed ? _value.bvn : bvn as BVN,
      remita: remita == freezed ? _value.remita : remita as Remita,
      companyProfile: companyProfile == freezed
          ? _value.companyProfile
          : companyProfile as CompanyProfile,
      directors:
          directors == freezed ? _value.directors : directors as List<dynamic>,
      businessIncome: businessIncome == freezed
          ? _value.businessIncome
          : businessIncome as BusinessIncome,
      operatingExpenses: operatingExpenses == freezed
          ? _value.operatingExpenses
          : operatingExpenses as OperatingExpenses,
      businessAddress: businessAddress == freezed
          ? _value.businessAddress
          : businessAddress as BusinessAddress,
      idCard: idCard == freezed ? _value.idCard : idCard as IdCard,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $NextOfKinCopyWith<$Res> get nextOfKin {
    if (_value.nextOfKin == null) {
      return null;
    }
    return $NextOfKinCopyWith<$Res>(_value.nextOfKin, (value) {
      return _then(_value.copyWith(nextOfKin: value));
    });
  }

  @override
  $EducationCopyWith<$Res> get education {
    if (_value.education == null) {
      return null;
    }
    return $EducationCopyWith<$Res>(_value.education, (value) {
      return _then(_value.copyWith(education: value));
    });
  }

  @override
  $HomeAddressCopyWith<$Res> get homeAddress {
    if (_value.homeAddress == null) {
      return null;
    }
    return $HomeAddressCopyWith<$Res>(_value.homeAddress, (value) {
      return _then(_value.copyWith(homeAddress: value));
    });
  }

  @override
  $WorkCopyWith<$Res> get work {
    if (_value.work == null) {
      return null;
    }
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }

  @override
  $ExpensesCopyWith<$Res> get expenses {
    if (_value.expenses == null) {
      return null;
    }
    return $ExpensesCopyWith<$Res>(_value.expenses, (value) {
      return _then(_value.copyWith(expenses: value));
    });
  }

  @override
  $FacebookCopyWith<$Res> get facebook {
    if (_value.facebook == null) {
      return null;
    }
    return $FacebookCopyWith<$Res>(_value.facebook, (value) {
      return _then(_value.copyWith(facebook: value));
    });
  }

  @override
  $TwitterCopyWith<$Res> get twitter {
    if (_value.twitter == null) {
      return null;
    }
    return $TwitterCopyWith<$Res>(_value.twitter, (value) {
      return _then(_value.copyWith(twitter: value));
    });
  }

  @override
  $LinkedinCopyWith<$Res> get linkedin {
    if (_value.linkedin == null) {
      return null;
    }
    return $LinkedinCopyWith<$Res>(_value.linkedin, (value) {
      return _then(_value.copyWith(linkedin: value));
    });
  }

  @override
  $BVNCopyWith<$Res> get bvn {
    if (_value.bvn == null) {
      return null;
    }
    return $BVNCopyWith<$Res>(_value.bvn, (value) {
      return _then(_value.copyWith(bvn: value));
    });
  }

  @override
  $RemitaCopyWith<$Res> get remita {
    if (_value.remita == null) {
      return null;
    }
    return $RemitaCopyWith<$Res>(_value.remita, (value) {
      return _then(_value.copyWith(remita: value));
    });
  }

  @override
  $CompanyProfileCopyWith<$Res> get companyProfile {
    if (_value.companyProfile == null) {
      return null;
    }
    return $CompanyProfileCopyWith<$Res>(_value.companyProfile, (value) {
      return _then(_value.copyWith(companyProfile: value));
    });
  }

  @override
  $BusinessIncomeCopyWith<$Res> get businessIncome {
    if (_value.businessIncome == null) {
      return null;
    }
    return $BusinessIncomeCopyWith<$Res>(_value.businessIncome, (value) {
      return _then(_value.copyWith(businessIncome: value));
    });
  }

  @override
  $OperatingExpensesCopyWith<$Res> get operatingExpenses {
    if (_value.operatingExpenses == null) {
      return null;
    }
    return $OperatingExpensesCopyWith<$Res>(_value.operatingExpenses, (value) {
      return _then(_value.copyWith(operatingExpenses: value));
    });
  }

  @override
  $BusinessAddressCopyWith<$Res> get businessAddress {
    if (_value.businessAddress == null) {
      return null;
    }
    return $BusinessAddressCopyWith<$Res>(_value.businessAddress, (value) {
      return _then(_value.copyWith(businessAddress: value));
    });
  }

  @override
  $IdCardCopyWith<$Res> get idCard {
    if (_value.idCard == null) {
      return null;
    }
    return $IdCardCopyWith<$Res>(_value.idCard, (value) {
      return _then(_value.copyWith(idCard: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailsRequestCopyWith<$Res>
    implements $UserDetailsRequestCopyWith<$Res> {
  factory _$UserDetailsRequestCopyWith(
          _UserDetailsRequest value, $Res Function(_UserDetailsRequest) then) =
      __$UserDetailsRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
          String token,
      @nullable
          Profile profile,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
          Education education,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
          Facebook facebook,
      @nullable
          Twitter twitter,
      @nullable
          Linkedin linkedin,
      @nullable
          BVN bvn,
      @nullable
          Remita remita,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<dynamic> directors,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'operating_expenses')
          OperatingExpenses operatingExpenses,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'idcard')
          IdCard idCard});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $NextOfKinCopyWith<$Res> get nextOfKin;
  @override
  $EducationCopyWith<$Res> get education;
  @override
  $HomeAddressCopyWith<$Res> get homeAddress;
  @override
  $WorkCopyWith<$Res> get work;
  @override
  $ExpensesCopyWith<$Res> get expenses;
  @override
  $FacebookCopyWith<$Res> get facebook;
  @override
  $TwitterCopyWith<$Res> get twitter;
  @override
  $LinkedinCopyWith<$Res> get linkedin;
  @override
  $BVNCopyWith<$Res> get bvn;
  @override
  $RemitaCopyWith<$Res> get remita;
  @override
  $CompanyProfileCopyWith<$Res> get companyProfile;
  @override
  $BusinessIncomeCopyWith<$Res> get businessIncome;
  @override
  $OperatingExpensesCopyWith<$Res> get operatingExpenses;
  @override
  $BusinessAddressCopyWith<$Res> get businessAddress;
  @override
  $IdCardCopyWith<$Res> get idCard;
}

/// @nodoc
class __$UserDetailsRequestCopyWithImpl<$Res>
    extends _$UserDetailsRequestCopyWithImpl<$Res>
    implements _$UserDetailsRequestCopyWith<$Res> {
  __$UserDetailsRequestCopyWithImpl(
      _UserDetailsRequest _value, $Res Function(_UserDetailsRequest) _then)
      : super(_value, (v) => _then(v as _UserDetailsRequest));

  @override
  _UserDetailsRequest get _value => super._value as _UserDetailsRequest;

  @override
  $Res call({
    Object token = freezed,
    Object profile = freezed,
    Object nextOfKin = freezed,
    Object education = freezed,
    Object homeAddress = freezed,
    Object work = freezed,
    Object expenses = freezed,
    Object facebook = freezed,
    Object twitter = freezed,
    Object linkedin = freezed,
    Object bvn = freezed,
    Object remita = freezed,
    Object companyProfile = freezed,
    Object directors = freezed,
    Object businessIncome = freezed,
    Object operatingExpenses = freezed,
    Object businessAddress = freezed,
    Object idCard = freezed,
  }) {
    return _then(_UserDetailsRequest(
      token: token == freezed ? _value.token : token as String,
      profile: profile == freezed ? _value.profile : profile as Profile,
      nextOfKin:
          nextOfKin == freezed ? _value.nextOfKin : nextOfKin as NextOfKin,
      education:
          education == freezed ? _value.education : education as Education,
      homeAddress: homeAddress == freezed
          ? _value.homeAddress
          : homeAddress as HomeAddress,
      work: work == freezed ? _value.work : work as Work,
      expenses: expenses == freezed ? _value.expenses : expenses as Expenses,
      facebook: facebook == freezed ? _value.facebook : facebook as Facebook,
      twitter: twitter == freezed ? _value.twitter : twitter as Twitter,
      linkedin: linkedin == freezed ? _value.linkedin : linkedin as Linkedin,
      bvn: bvn == freezed ? _value.bvn : bvn as BVN,
      remita: remita == freezed ? _value.remita : remita as Remita,
      companyProfile: companyProfile == freezed
          ? _value.companyProfile
          : companyProfile as CompanyProfile,
      directors:
          directors == freezed ? _value.directors : directors as List<dynamic>,
      businessIncome: businessIncome == freezed
          ? _value.businessIncome
          : businessIncome as BusinessIncome,
      operatingExpenses: operatingExpenses == freezed
          ? _value.operatingExpenses
          : operatingExpenses as OperatingExpenses,
      businessAddress: businessAddress == freezed
          ? _value.businessAddress
          : businessAddress as BusinessAddress,
      idCard: idCard == freezed ? _value.idCard : idCard as IdCard,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_UserDetailsRequest implements _UserDetailsRequest {
  _$_UserDetailsRequest(
      {@nullable this.token,
      @nullable this.profile,
      @nullable @JsonKey(name: 'next_of_kin') this.nextOfKin,
      @nullable this.education,
      @nullable @JsonKey(name: 'home_address') this.homeAddress,
      @nullable this.work,
      @nullable this.expenses,
      @nullable this.facebook,
      @nullable this.twitter,
      @nullable this.linkedin,
      @nullable this.bvn,
      @nullable this.remita,
      @nullable @JsonKey(name: 'company_profile') this.companyProfile,
      @nullable this.directors,
      @nullable @JsonKey(name: 'business_income') this.businessIncome,
      @nullable @JsonKey(name: 'operating_expenses') this.operatingExpenses,
      @nullable @JsonKey(name: 'business_address') this.businessAddress,
      @nullable @JsonKey(name: 'idcard') this.idCard});

  factory _$_UserDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailsRequestFromJson(json);

  @override
  @nullable
  final String token;
  @override
  @nullable
  final Profile profile;
  @override
  @nullable
  @JsonKey(name: 'next_of_kin')
  final NextOfKin nextOfKin;
  @override
  @nullable
  final Education education;
  @override
  @nullable
  @JsonKey(name: 'home_address')
  final HomeAddress homeAddress;
  @override
  @nullable
  final Work work;
  @override
  @nullable
  final Expenses expenses;
  @override
  @nullable
  final Facebook facebook;
  @override
  @nullable
  final Twitter twitter;
  @override
  @nullable
  final Linkedin linkedin;
  @override
  @nullable
  final BVN bvn;
  @override
  @nullable
  final Remita remita;
  @override
  @nullable
  @JsonKey(name: 'company_profile')
  final CompanyProfile companyProfile;
  @override
  @nullable
  final List<dynamic> directors;
  @override
  @nullable
  @JsonKey(name: 'business_income')
  final BusinessIncome businessIncome;
  @override
  @nullable
  @JsonKey(name: 'operating_expenses')
  final OperatingExpenses operatingExpenses;
  @override
  @nullable
  @JsonKey(name: 'business_address')
  final BusinessAddress businessAddress;
  @override
  @nullable
  @JsonKey(name: 'idcard')
  final IdCard idCard;

  @override
  String toString() {
    return 'UserDetailsRequest(token: $token, profile: $profile, nextOfKin: $nextOfKin, education: $education, homeAddress: $homeAddress, work: $work, expenses: $expenses, facebook: $facebook, twitter: $twitter, linkedin: $linkedin, bvn: $bvn, remita: $remita, companyProfile: $companyProfile, directors: $directors, businessIncome: $businessIncome, operatingExpenses: $operatingExpenses, businessAddress: $businessAddress, idCard: $idCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailsRequest &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.nextOfKin, nextOfKin) ||
                const DeepCollectionEquality()
                    .equals(other.nextOfKin, nextOfKin)) &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.homeAddress, homeAddress) ||
                const DeepCollectionEquality()
                    .equals(other.homeAddress, homeAddress)) &&
            (identical(other.work, work) ||
                const DeepCollectionEquality().equals(other.work, work)) &&
            (identical(other.expenses, expenses) ||
                const DeepCollectionEquality()
                    .equals(other.expenses, expenses)) &&
            (identical(other.facebook, facebook) ||
                const DeepCollectionEquality()
                    .equals(other.facebook, facebook)) &&
            (identical(other.twitter, twitter) ||
                const DeepCollectionEquality()
                    .equals(other.twitter, twitter)) &&
            (identical(other.linkedin, linkedin) ||
                const DeepCollectionEquality()
                    .equals(other.linkedin, linkedin)) &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)) &&
            (identical(other.remita, remita) ||
                const DeepCollectionEquality().equals(other.remita, remita)) &&
            (identical(other.companyProfile, companyProfile) ||
                const DeepCollectionEquality()
                    .equals(other.companyProfile, companyProfile)) &&
            (identical(other.directors, directors) ||
                const DeepCollectionEquality()
                    .equals(other.directors, directors)) &&
            (identical(other.businessIncome, businessIncome) ||
                const DeepCollectionEquality()
                    .equals(other.businessIncome, businessIncome)) &&
            (identical(other.operatingExpenses, operatingExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.operatingExpenses, operatingExpenses)) &&
            (identical(other.businessAddress, businessAddress) ||
                const DeepCollectionEquality()
                    .equals(other.businessAddress, businessAddress)) &&
            (identical(other.idCard, idCard) ||
                const DeepCollectionEquality().equals(other.idCard, idCard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(nextOfKin) ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(homeAddress) ^
      const DeepCollectionEquality().hash(work) ^
      const DeepCollectionEquality().hash(expenses) ^
      const DeepCollectionEquality().hash(facebook) ^
      const DeepCollectionEquality().hash(twitter) ^
      const DeepCollectionEquality().hash(linkedin) ^
      const DeepCollectionEquality().hash(bvn) ^
      const DeepCollectionEquality().hash(remita) ^
      const DeepCollectionEquality().hash(companyProfile) ^
      const DeepCollectionEquality().hash(directors) ^
      const DeepCollectionEquality().hash(businessIncome) ^
      const DeepCollectionEquality().hash(operatingExpenses) ^
      const DeepCollectionEquality().hash(businessAddress) ^
      const DeepCollectionEquality().hash(idCard);

  @override
  _$UserDetailsRequestCopyWith<_UserDetailsRequest> get copyWith =>
      __$UserDetailsRequestCopyWithImpl<_UserDetailsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailsRequestToJson(this);
  }
}

abstract class _UserDetailsRequest implements UserDetailsRequest {
  factory _UserDetailsRequest(
      {@nullable
          String token,
      @nullable
          Profile profile,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
          Education education,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
          Facebook facebook,
      @nullable
          Twitter twitter,
      @nullable
          Linkedin linkedin,
      @nullable
          BVN bvn,
      @nullable
          Remita remita,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<dynamic> directors,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'operating_expenses')
          OperatingExpenses operatingExpenses,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'idcard')
          IdCard idCard}) = _$_UserDetailsRequest;

  factory _UserDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsRequest.fromJson;

  @override
  @nullable
  String get token;
  @override
  @nullable
  Profile get profile;
  @override
  @nullable
  @JsonKey(name: 'next_of_kin')
  NextOfKin get nextOfKin;
  @override
  @nullable
  Education get education;
  @override
  @nullable
  @JsonKey(name: 'home_address')
  HomeAddress get homeAddress;
  @override
  @nullable
  Work get work;
  @override
  @nullable
  Expenses get expenses;
  @override
  @nullable
  Facebook get facebook;
  @override
  @nullable
  Twitter get twitter;
  @override
  @nullable
  Linkedin get linkedin;
  @override
  @nullable
  BVN get bvn;
  @override
  @nullable
  Remita get remita;
  @override
  @nullable
  @JsonKey(name: 'company_profile')
  CompanyProfile get companyProfile;
  @override
  @nullable
  List<dynamic> get directors;
  @override
  @nullable
  @JsonKey(name: 'business_income')
  BusinessIncome get businessIncome;
  @override
  @nullable
  @JsonKey(name: 'operating_expenses')
  OperatingExpenses get operatingExpenses;
  @override
  @nullable
  @JsonKey(name: 'business_address')
  BusinessAddress get businessAddress;
  @override
  @nullable
  @JsonKey(name: 'idcard')
  IdCard get idCard;
  @override
  _$UserDetailsRequestCopyWith<_UserDetailsRequest> get copyWith;
}
