// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'loan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoanRequest _$LoanRequestFromJson(Map<String, dynamic> json) {
  return _LoanRequest.fromJson(json);
}

/// @nodoc
class _$LoanRequestTearOff {
  const _$LoanRequestTearOff();

// ignore: unused_element
  _LoanRequest call(
      {@nullable
          Profile profile,
      @nullable
          Request request,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Account account,
      @nullable
          Education education,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
      @JsonKey(name: 'identity')
          IdCard idCard,
      @nullable
          Paystack paystack,
      @nullable
          List<Doc> documents,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<Director> directors,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'business_expenses')
          OperatingExpenses operatingExpenses}) {
    return _LoanRequest(
      profile: profile,
      request: request,
      nextOfKin: nextOfKin,
      homeAddress: homeAddress,
      account: account,
      education: education,
      work: work,
      expenses: expenses,
      idCard: idCard,
      paystack: paystack,
      documents: documents,
      companyProfile: companyProfile,
      directors: directors,
      businessAddress: businessAddress,
      businessIncome: businessIncome,
      operatingExpenses: operatingExpenses,
    );
  }

// ignore: unused_element
  LoanRequest fromJson(Map<String, Object> json) {
    return LoanRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoanRequest = _$LoanRequestTearOff();

/// @nodoc
mixin _$LoanRequest {
  @nullable
  Profile get profile;
  @nullable
  Request get request;
  @nullable
  @JsonKey(name: 'next_of_kin')
  NextOfKin get nextOfKin;
  @nullable
  @JsonKey(name: 'home_address')
  HomeAddress get homeAddress;
  @nullable
  Account get account;
  @nullable
  Education get education;
  @nullable
  Work get work;
  @nullable
  Expenses get expenses;
  @nullable
  @JsonKey(name: 'identity')
  IdCard get idCard;
  @nullable
  Paystack get paystack;
  @nullable
  List<Doc> get documents;
  @nullable
  @JsonKey(name: 'company_profile')
  CompanyProfile get companyProfile;
  @nullable
  List<Director> get directors;
  @nullable
  @JsonKey(name: 'business_address')
  BusinessAddress get businessAddress;
  @nullable
  @JsonKey(name: 'business_income')
  BusinessIncome get businessIncome;
  @nullable
  @JsonKey(name: 'business_expenses')
  OperatingExpenses get operatingExpenses;

  Map<String, dynamic> toJson();
  $LoanRequestCopyWith<LoanRequest> get copyWith;
}

/// @nodoc
abstract class $LoanRequestCopyWith<$Res> {
  factory $LoanRequestCopyWith(
          LoanRequest value, $Res Function(LoanRequest) then) =
      _$LoanRequestCopyWithImpl<$Res>;
  $Res call(
      {@nullable
          Profile profile,
      @nullable
          Request request,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Account account,
      @nullable
          Education education,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
      @JsonKey(name: 'identity')
          IdCard idCard,
      @nullable
          Paystack paystack,
      @nullable
          List<Doc> documents,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<Director> directors,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'business_expenses')
          OperatingExpenses operatingExpenses});

  $ProfileCopyWith<$Res> get profile;
  $RequestCopyWith<$Res> get request;
  $NextOfKinCopyWith<$Res> get nextOfKin;
  $HomeAddressCopyWith<$Res> get homeAddress;
  $AccountCopyWith<$Res> get account;
  $EducationCopyWith<$Res> get education;
  $WorkCopyWith<$Res> get work;
  $ExpensesCopyWith<$Res> get expenses;
  $IdCardCopyWith<$Res> get idCard;
  $PaystackCopyWith<$Res> get paystack;
  $CompanyProfileCopyWith<$Res> get companyProfile;
  $BusinessAddressCopyWith<$Res> get businessAddress;
  $BusinessIncomeCopyWith<$Res> get businessIncome;
  $OperatingExpensesCopyWith<$Res> get operatingExpenses;
}

/// @nodoc
class _$LoanRequestCopyWithImpl<$Res> implements $LoanRequestCopyWith<$Res> {
  _$LoanRequestCopyWithImpl(this._value, this._then);

  final LoanRequest _value;
  // ignore: unused_field
  final $Res Function(LoanRequest) _then;

  @override
  $Res call({
    Object profile = freezed,
    Object request = freezed,
    Object nextOfKin = freezed,
    Object homeAddress = freezed,
    Object account = freezed,
    Object education = freezed,
    Object work = freezed,
    Object expenses = freezed,
    Object idCard = freezed,
    Object paystack = freezed,
    Object documents = freezed,
    Object companyProfile = freezed,
    Object directors = freezed,
    Object businessAddress = freezed,
    Object businessIncome = freezed,
    Object operatingExpenses = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed ? _value.profile : profile as Profile,
      request: request == freezed ? _value.request : request as Request,
      nextOfKin:
          nextOfKin == freezed ? _value.nextOfKin : nextOfKin as NextOfKin,
      homeAddress: homeAddress == freezed
          ? _value.homeAddress
          : homeAddress as HomeAddress,
      account: account == freezed ? _value.account : account as Account,
      education:
          education == freezed ? _value.education : education as Education,
      work: work == freezed ? _value.work : work as Work,
      expenses: expenses == freezed ? _value.expenses : expenses as Expenses,
      idCard: idCard == freezed ? _value.idCard : idCard as IdCard,
      paystack: paystack == freezed ? _value.paystack : paystack as Paystack,
      documents:
          documents == freezed ? _value.documents : documents as List<Doc>,
      companyProfile: companyProfile == freezed
          ? _value.companyProfile
          : companyProfile as CompanyProfile,
      directors:
          directors == freezed ? _value.directors : directors as List<Director>,
      businessAddress: businessAddress == freezed
          ? _value.businessAddress
          : businessAddress as BusinessAddress,
      businessIncome: businessIncome == freezed
          ? _value.businessIncome
          : businessIncome as BusinessIncome,
      operatingExpenses: operatingExpenses == freezed
          ? _value.operatingExpenses
          : operatingExpenses as OperatingExpenses,
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
  $RequestCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
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
  $HomeAddressCopyWith<$Res> get homeAddress {
    if (_value.homeAddress == null) {
      return null;
    }
    return $HomeAddressCopyWith<$Res>(_value.homeAddress, (value) {
      return _then(_value.copyWith(homeAddress: value));
    });
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
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
  $IdCardCopyWith<$Res> get idCard {
    if (_value.idCard == null) {
      return null;
    }
    return $IdCardCopyWith<$Res>(_value.idCard, (value) {
      return _then(_value.copyWith(idCard: value));
    });
  }

  @override
  $PaystackCopyWith<$Res> get paystack {
    if (_value.paystack == null) {
      return null;
    }
    return $PaystackCopyWith<$Res>(_value.paystack, (value) {
      return _then(_value.copyWith(paystack: value));
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
  $BusinessAddressCopyWith<$Res> get businessAddress {
    if (_value.businessAddress == null) {
      return null;
    }
    return $BusinessAddressCopyWith<$Res>(_value.businessAddress, (value) {
      return _then(_value.copyWith(businessAddress: value));
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
}

/// @nodoc
abstract class _$LoanRequestCopyWith<$Res>
    implements $LoanRequestCopyWith<$Res> {
  factory _$LoanRequestCopyWith(
          _LoanRequest value, $Res Function(_LoanRequest) then) =
      __$LoanRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
          Profile profile,
      @nullable
          Request request,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Account account,
      @nullable
          Education education,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
      @JsonKey(name: 'identity')
          IdCard idCard,
      @nullable
          Paystack paystack,
      @nullable
          List<Doc> documents,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<Director> directors,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'business_expenses')
          OperatingExpenses operatingExpenses});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $RequestCopyWith<$Res> get request;
  @override
  $NextOfKinCopyWith<$Res> get nextOfKin;
  @override
  $HomeAddressCopyWith<$Res> get homeAddress;
  @override
  $AccountCopyWith<$Res> get account;
  @override
  $EducationCopyWith<$Res> get education;
  @override
  $WorkCopyWith<$Res> get work;
  @override
  $ExpensesCopyWith<$Res> get expenses;
  @override
  $IdCardCopyWith<$Res> get idCard;
  @override
  $PaystackCopyWith<$Res> get paystack;
  @override
  $CompanyProfileCopyWith<$Res> get companyProfile;
  @override
  $BusinessAddressCopyWith<$Res> get businessAddress;
  @override
  $BusinessIncomeCopyWith<$Res> get businessIncome;
  @override
  $OperatingExpensesCopyWith<$Res> get operatingExpenses;
}

/// @nodoc
class __$LoanRequestCopyWithImpl<$Res> extends _$LoanRequestCopyWithImpl<$Res>
    implements _$LoanRequestCopyWith<$Res> {
  __$LoanRequestCopyWithImpl(
      _LoanRequest _value, $Res Function(_LoanRequest) _then)
      : super(_value, (v) => _then(v as _LoanRequest));

  @override
  _LoanRequest get _value => super._value as _LoanRequest;

  @override
  $Res call({
    Object profile = freezed,
    Object request = freezed,
    Object nextOfKin = freezed,
    Object homeAddress = freezed,
    Object account = freezed,
    Object education = freezed,
    Object work = freezed,
    Object expenses = freezed,
    Object idCard = freezed,
    Object paystack = freezed,
    Object documents = freezed,
    Object companyProfile = freezed,
    Object directors = freezed,
    Object businessAddress = freezed,
    Object businessIncome = freezed,
    Object operatingExpenses = freezed,
  }) {
    return _then(_LoanRequest(
      profile: profile == freezed ? _value.profile : profile as Profile,
      request: request == freezed ? _value.request : request as Request,
      nextOfKin:
          nextOfKin == freezed ? _value.nextOfKin : nextOfKin as NextOfKin,
      homeAddress: homeAddress == freezed
          ? _value.homeAddress
          : homeAddress as HomeAddress,
      account: account == freezed ? _value.account : account as Account,
      education:
          education == freezed ? _value.education : education as Education,
      work: work == freezed ? _value.work : work as Work,
      expenses: expenses == freezed ? _value.expenses : expenses as Expenses,
      idCard: idCard == freezed ? _value.idCard : idCard as IdCard,
      paystack: paystack == freezed ? _value.paystack : paystack as Paystack,
      documents:
          documents == freezed ? _value.documents : documents as List<Doc>,
      companyProfile: companyProfile == freezed
          ? _value.companyProfile
          : companyProfile as CompanyProfile,
      directors:
          directors == freezed ? _value.directors : directors as List<Director>,
      businessAddress: businessAddress == freezed
          ? _value.businessAddress
          : businessAddress as BusinessAddress,
      businessIncome: businessIncome == freezed
          ? _value.businessIncome
          : businessIncome as BusinessIncome,
      operatingExpenses: operatingExpenses == freezed
          ? _value.operatingExpenses
          : operatingExpenses as OperatingExpenses,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_LoanRequest implements _LoanRequest {
  _$_LoanRequest(
      {@nullable this.profile,
      @nullable this.request,
      @nullable @JsonKey(name: 'next_of_kin') this.nextOfKin,
      @nullable @JsonKey(name: 'home_address') this.homeAddress,
      @nullable this.account,
      @nullable this.education,
      @nullable this.work,
      @nullable this.expenses,
      @nullable @JsonKey(name: 'identity') this.idCard,
      @nullable this.paystack,
      @nullable this.documents,
      @nullable @JsonKey(name: 'company_profile') this.companyProfile,
      @nullable this.directors,
      @nullable @JsonKey(name: 'business_address') this.businessAddress,
      @nullable @JsonKey(name: 'business_income') this.businessIncome,
      @nullable @JsonKey(name: 'business_expenses') this.operatingExpenses});

  factory _$_LoanRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_LoanRequestFromJson(json);

  @override
  @nullable
  final Profile profile;
  @override
  @nullable
  final Request request;
  @override
  @nullable
  @JsonKey(name: 'next_of_kin')
  final NextOfKin nextOfKin;
  @override
  @nullable
  @JsonKey(name: 'home_address')
  final HomeAddress homeAddress;
  @override
  @nullable
  final Account account;
  @override
  @nullable
  final Education education;
  @override
  @nullable
  final Work work;
  @override
  @nullable
  final Expenses expenses;
  @override
  @nullable
  @JsonKey(name: 'identity')
  final IdCard idCard;
  @override
  @nullable
  final Paystack paystack;
  @override
  @nullable
  final List<Doc> documents;
  @override
  @nullable
  @JsonKey(name: 'company_profile')
  final CompanyProfile companyProfile;
  @override
  @nullable
  final List<Director> directors;
  @override
  @nullable
  @JsonKey(name: 'business_address')
  final BusinessAddress businessAddress;
  @override
  @nullable
  @JsonKey(name: 'business_income')
  final BusinessIncome businessIncome;
  @override
  @nullable
  @JsonKey(name: 'business_expenses')
  final OperatingExpenses operatingExpenses;

  @override
  String toString() {
    return 'LoanRequest(profile: $profile, request: $request, nextOfKin: $nextOfKin, homeAddress: $homeAddress, account: $account, education: $education, work: $work, expenses: $expenses, idCard: $idCard, paystack: $paystack, documents: $documents, companyProfile: $companyProfile, directors: $directors, businessAddress: $businessAddress, businessIncome: $businessIncome, operatingExpenses: $operatingExpenses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoanRequest &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.nextOfKin, nextOfKin) ||
                const DeepCollectionEquality()
                    .equals(other.nextOfKin, nextOfKin)) &&
            (identical(other.homeAddress, homeAddress) ||
                const DeepCollectionEquality()
                    .equals(other.homeAddress, homeAddress)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.work, work) ||
                const DeepCollectionEquality().equals(other.work, work)) &&
            (identical(other.expenses, expenses) ||
                const DeepCollectionEquality()
                    .equals(other.expenses, expenses)) &&
            (identical(other.idCard, idCard) ||
                const DeepCollectionEquality().equals(other.idCard, idCard)) &&
            (identical(other.paystack, paystack) ||
                const DeepCollectionEquality()
                    .equals(other.paystack, paystack)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality()
                    .equals(other.documents, documents)) &&
            (identical(other.companyProfile, companyProfile) ||
                const DeepCollectionEquality()
                    .equals(other.companyProfile, companyProfile)) &&
            (identical(other.directors, directors) ||
                const DeepCollectionEquality()
                    .equals(other.directors, directors)) &&
            (identical(other.businessAddress, businessAddress) ||
                const DeepCollectionEquality()
                    .equals(other.businessAddress, businessAddress)) &&
            (identical(other.businessIncome, businessIncome) ||
                const DeepCollectionEquality()
                    .equals(other.businessIncome, businessIncome)) &&
            (identical(other.operatingExpenses, operatingExpenses) ||
                const DeepCollectionEquality()
                    .equals(other.operatingExpenses, operatingExpenses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(nextOfKin) ^
      const DeepCollectionEquality().hash(homeAddress) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(work) ^
      const DeepCollectionEquality().hash(expenses) ^
      const DeepCollectionEquality().hash(idCard) ^
      const DeepCollectionEquality().hash(paystack) ^
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(companyProfile) ^
      const DeepCollectionEquality().hash(directors) ^
      const DeepCollectionEquality().hash(businessAddress) ^
      const DeepCollectionEquality().hash(businessIncome) ^
      const DeepCollectionEquality().hash(operatingExpenses);

  @override
  _$LoanRequestCopyWith<_LoanRequest> get copyWith =>
      __$LoanRequestCopyWithImpl<_LoanRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoanRequestToJson(this);
  }
}

abstract class _LoanRequest implements LoanRequest {
  factory _LoanRequest(
      {@nullable
          Profile profile,
      @nullable
          Request request,
      @nullable
      @JsonKey(name: 'next_of_kin')
          NextOfKin nextOfKin,
      @nullable
      @JsonKey(name: 'home_address')
          HomeAddress homeAddress,
      @nullable
          Account account,
      @nullable
          Education education,
      @nullable
          Work work,
      @nullable
          Expenses expenses,
      @nullable
      @JsonKey(name: 'identity')
          IdCard idCard,
      @nullable
          Paystack paystack,
      @nullable
          List<Doc> documents,
      @nullable
      @JsonKey(name: 'company_profile')
          CompanyProfile companyProfile,
      @nullable
          List<Director> directors,
      @nullable
      @JsonKey(name: 'business_address')
          BusinessAddress businessAddress,
      @nullable
      @JsonKey(name: 'business_income')
          BusinessIncome businessIncome,
      @nullable
      @JsonKey(name: 'business_expenses')
          OperatingExpenses operatingExpenses}) = _$_LoanRequest;

  factory _LoanRequest.fromJson(Map<String, dynamic> json) =
      _$_LoanRequest.fromJson;

  @override
  @nullable
  Profile get profile;
  @override
  @nullable
  Request get request;
  @override
  @nullable
  @JsonKey(name: 'next_of_kin')
  NextOfKin get nextOfKin;
  @override
  @nullable
  @JsonKey(name: 'home_address')
  HomeAddress get homeAddress;
  @override
  @nullable
  Account get account;
  @override
  @nullable
  Education get education;
  @override
  @nullable
  Work get work;
  @override
  @nullable
  Expenses get expenses;
  @override
  @nullable
  @JsonKey(name: 'identity')
  IdCard get idCard;
  @override
  @nullable
  Paystack get paystack;
  @override
  @nullable
  List<Doc> get documents;
  @override
  @nullable
  @JsonKey(name: 'company_profile')
  CompanyProfile get companyProfile;
  @override
  @nullable
  List<Director> get directors;
  @override
  @nullable
  @JsonKey(name: 'business_address')
  BusinessAddress get businessAddress;
  @override
  @nullable
  @JsonKey(name: 'business_income')
  BusinessIncome get businessIncome;
  @override
  @nullable
  @JsonKey(name: 'business_expenses')
  OperatingExpenses get operatingExpenses;
  @override
  _$LoanRequestCopyWith<_LoanRequest> get copyWith;
}

Request _$RequestFromJson(Map<String, dynamic> json) {
  return _Request.fromJson(json);
}

/// @nodoc
class _$RequestTearOff {
  const _$RequestTearOff();

// ignore: unused_element
  _Request call(
      {@nullable String amount,
      @nullable String tenor,
      @nullable @JsonKey(name: 'product_id') String productId}) {
    return _Request(
      amount: amount,
      tenor: tenor,
      productId: productId,
    );
  }

// ignore: unused_element
  Request fromJson(Map<String, Object> json) {
    return Request.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Request = _$RequestTearOff();

/// @nodoc
mixin _$Request {
  @nullable
  String get amount;
  @nullable
  String get tenor;
  @nullable
  @JsonKey(name: 'product_id')
  String get productId;

  Map<String, dynamic> toJson();
  $RequestCopyWith<Request> get copyWith;
}

/// @nodoc
abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {@nullable String amount,
      @nullable String tenor,
      @nullable @JsonKey(name: 'product_id') String productId});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object tenor = freezed,
    Object productId = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as String,
      tenor: tenor == freezed ? _value.tenor : tenor as String,
      productId: productId == freezed ? _value.productId : productId as String,
    ));
  }
}

/// @nodoc
abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String amount,
      @nullable String tenor,
      @nullable @JsonKey(name: 'product_id') String productId});
}

/// @nodoc
class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object amount = freezed,
    Object tenor = freezed,
    Object productId = freezed,
  }) {
    return _then(_Request(
      amount: amount == freezed ? _value.amount : amount as String,
      tenor: tenor == freezed ? _value.tenor : tenor as String,
      productId: productId == freezed ? _value.productId : productId as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Request implements _Request {
  _$_Request(
      {@nullable this.amount,
      @nullable this.tenor,
      @nullable @JsonKey(name: 'product_id') this.productId});

  factory _$_Request.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestFromJson(json);

  @override
  @nullable
  final String amount;
  @override
  @nullable
  final String tenor;
  @override
  @nullable
  @JsonKey(name: 'product_id')
  final String productId;

  @override
  String toString() {
    return 'Request(amount: $amount, tenor: $tenor, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.tenor, tenor) ||
                const DeepCollectionEquality().equals(other.tenor, tenor)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(tenor) ^
      const DeepCollectionEquality().hash(productId);

  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestToJson(this);
  }
}

abstract class _Request implements Request {
  factory _Request(
      {@nullable String amount,
      @nullable String tenor,
      @nullable @JsonKey(name: 'product_id') String productId}) = _$_Request;

  factory _Request.fromJson(Map<String, dynamic> json) = _$_Request.fromJson;

  @override
  @nullable
  String get amount;
  @override
  @nullable
  String get tenor;
  @override
  @nullable
  @JsonKey(name: 'product_id')
  String get productId;
  @override
  _$RequestCopyWith<_Request> get copyWith;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

// ignore: unused_element
  _Account call(
      {@nullable String id,
      @nullable @JsonKey(name: 'account_no') String accountNo,
      @nullable @JsonKey(name: 'account_name') String accountName,
      @nullable String bvn}) {
    return _Account(
      id: id,
      accountNo: accountNo,
      accountName: accountName,
      bvn: bvn,
    );
  }

// ignore: unused_element
  Account fromJson(Map<String, Object> json) {
    return Account.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  @nullable
  String get id;
  @nullable
  @JsonKey(name: 'account_no')
  String get accountNo;
  @nullable
  @JsonKey(name: 'account_name')
  String get accountName;
  @nullable
  String get bvn;

  Map<String, dynamic> toJson();
  $AccountCopyWith<Account> get copyWith;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {@nullable String id,
      @nullable @JsonKey(name: 'account_no') String accountNo,
      @nullable @JsonKey(name: 'account_name') String accountName,
      @nullable String bvn});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object id = freezed,
    Object accountNo = freezed,
    Object accountName = freezed,
    Object bvn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      accountNo: accountNo == freezed ? _value.accountNo : accountNo as String,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      bvn: bvn == freezed ? _value.bvn : bvn as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String id,
      @nullable @JsonKey(name: 'account_no') String accountNo,
      @nullable @JsonKey(name: 'account_name') String accountName,
      @nullable String bvn});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object id = freezed,
    Object accountNo = freezed,
    Object accountName = freezed,
    Object bvn = freezed,
  }) {
    return _then(_Account(
      id: id == freezed ? _value.id : id as String,
      accountNo: accountNo == freezed ? _value.accountNo : accountNo as String,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      bvn: bvn == freezed ? _value.bvn : bvn as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_Account implements _Account {
  _$_Account(
      {@nullable this.id,
      @nullable @JsonKey(name: 'account_no') this.accountNo,
      @nullable @JsonKey(name: 'account_name') this.accountName,
      @nullable this.bvn});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountFromJson(json);

  @override
  @nullable
  final String id;
  @override
  @nullable
  @JsonKey(name: 'account_no')
  final String accountNo;
  @override
  @nullable
  @JsonKey(name: 'account_name')
  final String accountName;
  @override
  @nullable
  final String bvn;

  @override
  String toString() {
    return 'Account(id: $id, accountNo: $accountNo, accountName: $accountName, bvn: $bvn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accountNo, accountNo) ||
                const DeepCollectionEquality()
                    .equals(other.accountNo, accountNo)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.bvn, bvn) ||
                const DeepCollectionEquality().equals(other.bvn, bvn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accountNo) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(bvn);

  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountToJson(this);
  }
}

abstract class _Account implements Account {
  factory _Account(
      {@nullable String id,
      @nullable @JsonKey(name: 'account_no') String accountNo,
      @nullable @JsonKey(name: 'account_name') String accountName,
      @nullable String bvn}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  @nullable
  String get id;
  @override
  @nullable
  @JsonKey(name: 'account_no')
  String get accountNo;
  @override
  @nullable
  @JsonKey(name: 'account_name')
  String get accountName;
  @override
  @nullable
  String get bvn;
  @override
  _$AccountCopyWith<_Account> get copyWith;
}
