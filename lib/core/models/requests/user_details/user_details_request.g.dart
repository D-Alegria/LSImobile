// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailsRequest _$_$_UserDetailsRequestFromJson(
    Map<String, dynamic> json) {
  return _$_UserDetailsRequest(
    token: json['token'] as String,
    profile: json['profile'] == null
        ? null
        : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    nextOfKin: json['next_of_kin'] == null
        ? null
        : NextOfKin.fromJson(json['next_of_kin'] as Map<String, dynamic>),
    education: json['education'] == null
        ? null
        : Education.fromJson(json['education'] as Map<String, dynamic>),
    homeAddress: json['home_address'] == null
        ? null
        : HomeAddress.fromJson(json['home_address'] as Map<String, dynamic>),
    work: json['work'] == null
        ? null
        : Work.fromJson(json['work'] as Map<String, dynamic>),
    expenses: json['expenses'] == null
        ? null
        : Expenses.fromJson(json['expenses'] as Map<String, dynamic>),
    facebook: json['facebook'] == null
        ? null
        : Facebook.fromJson(json['facebook'] as Map<String, dynamic>),
    twitter: json['twitter'] == null
        ? null
        : Twitter.fromJson(json['twitter'] as Map<String, dynamic>),
    linkedin: json['linkedin'] == null
        ? null
        : Linkedin.fromJson(json['linkedin'] as Map<String, dynamic>),
    bvn: json['bvn'] == null
        ? null
        : BVN.fromJson(json['bvn'] as Map<String, dynamic>),
    remita: json['remita'] == null
        ? null
        : Remita.fromJson(json['remita'] as Map<String, dynamic>),
    companyProfile: json['company_profile'] == null
        ? null
        : CompanyProfile.fromJson(
            json['company_profile'] as Map<String, dynamic>),
    directors: (json['directors'] as List)
        ?.map((e) =>
            e == null ? null : Director.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    businessIncome: json['business_income'] == null
        ? null
        : BusinessIncome.fromJson(
            json['business_income'] as Map<String, dynamic>),
    operatingExpenses: json['operating_expenses'] == null
        ? null
        : OperatingExpenses.fromJson(
            json['operating_expenses'] as Map<String, dynamic>),
    businessAddress: json['business_address'] == null
        ? null
        : BusinessAddress.fromJson(
            json['business_address'] as Map<String, dynamic>),
    idCard: json['idcard'] == null
        ? null
        : IdCard.fromJson(json['idcard'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserDetailsRequestToJson(
        _$_UserDetailsRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'profile': instance.profile?.toJson(),
      'next_of_kin': instance.nextOfKin?.toJson(),
      'education': instance.education?.toJson(),
      'home_address': instance.homeAddress?.toJson(),
      'work': instance.work?.toJson(),
      'expenses': instance.expenses?.toJson(),
      'facebook': instance.facebook?.toJson(),
      'twitter': instance.twitter?.toJson(),
      'linkedin': instance.linkedin?.toJson(),
      'bvn': instance.bvn?.toJson(),
      'remita': instance.remita?.toJson(),
      'company_profile': instance.companyProfile?.toJson(),
      'directors': instance.directors?.map((e) => e?.toJson())?.toList(),
      'business_income': instance.businessIncome?.toJson(),
      'operating_expenses': instance.operatingExpenses?.toJson(),
      'business_address': instance.businessAddress?.toJson(),
      'idcard': instance.idCard?.toJson(),
    };
