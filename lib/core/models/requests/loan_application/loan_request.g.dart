// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoanRequest _$_$_LoanRequestFromJson(Map<String, dynamic> json) {
  return _$_LoanRequest(
    profile: json['profile'] == null
        ? null
        : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Request.fromJson(json['request'] as Map<String, dynamic>),
    nextOfKin: json['next_of_kin'] == null
        ? null
        : NextOfKin.fromJson(json['next_of_kin'] as Map<String, dynamic>),
    homeAddress: json['home_address'] == null
        ? null
        : HomeAddress.fromJson(json['home_address'] as Map<String, dynamic>),
    account: json['account'] == null
        ? null
        : Account.fromJson(json['account'] as Map<String, dynamic>),
    education: json['education'] == null
        ? null
        : Education.fromJson(json['education'] as Map<String, dynamic>),
    work: json['work'] == null
        ? null
        : Work.fromJson(json['work'] as Map<String, dynamic>),
    expenses: json['expenses'] == null
        ? null
        : Expenses.fromJson(json['expenses'] as Map<String, dynamic>),
    idCard: json['identity'] == null
        ? null
        : IdCard.fromJson(json['identity'] as Map<String, dynamic>),
    paystack: json['paystack'] == null
        ? null
        : Paystack.fromJson(json['paystack'] as Map<String, dynamic>),
    documents: (json['documents'] as List)
        ?.map((e) => e == null ? null : Doc.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    companyProfile: json['company_profile'] == null
        ? null
        : CompanyProfile.fromJson(
            json['company_profile'] as Map<String, dynamic>),
    directors: (json['directors'] as List)
        ?.map((e) =>
            e == null ? null : Director.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    businessAddress: json['business_address'] == null
        ? null
        : BusinessAddress.fromJson(
            json['business_address'] as Map<String, dynamic>),
    businessIncome: json['business_income'] == null
        ? null
        : BusinessIncome.fromJson(
            json['business_income'] as Map<String, dynamic>),
    operatingExpenses: json['business_expenses'] == null
        ? null
        : OperatingExpenses.fromJson(
            json['business_expenses'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LoanRequestToJson(_$_LoanRequest instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
      'request': instance.request?.toJson(),
      'next_of_kin': instance.nextOfKin?.toJson(),
      'home_address': instance.homeAddress?.toJson(),
      'account': instance.account?.toJson(),
      'education': instance.education?.toJson(),
      'work': instance.work?.toJson(),
      'expenses': instance.expenses?.toJson(),
      'identity': instance.idCard?.toJson(),
      'paystack': instance.paystack?.toJson(),
      'documents': instance.documents?.map((e) => e?.toJson())?.toList(),
      'company_profile': instance.companyProfile?.toJson(),
      'directors': instance.directors?.map((e) => e?.toJson())?.toList(),
      'business_address': instance.businessAddress?.toJson(),
      'business_income': instance.businessIncome?.toJson(),
      'business_expenses': instance.operatingExpenses?.toJson(),
    };

_$_Request _$_$_RequestFromJson(Map<String, dynamic> json) {
  return _$_Request(
    amount: json['amount'] as String,
    tenor: json['tenor'] as String,
    productId: json['product_id'] as String,
  );
}

Map<String, dynamic> _$_$_RequestToJson(_$_Request instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'tenor': instance.tenor,
      'product_id': instance.productId,
    };

_$_Account _$_$_AccountFromJson(Map<String, dynamic> json) {
  return _$_Account(
    id: json['id'] as String,
    accountNo: json['account_no'] as String,
    accountName: json['account_name'] as String,
    bvn: json['bvn'] as String,
  );
}

Map<String, dynamic> _$_$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_no': instance.accountNo,
      'account_name': instance.accountName,
      'bvn': instance.bvn,
    };
