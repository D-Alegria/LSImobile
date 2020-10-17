// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsRequest _$UserDetailsRequestFromJson(Map<String, dynamic> json) {
  return UserDetailsRequest(
    profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
    nextOfKin: NextOfKin.fromJson(json['next_of_kin'] as Map<String, dynamic>),
    education: Education.fromJson(json['education'] as Map<String, dynamic>),
    homeAddress:
        HomeAddress.fromJson(json['home_address'] as Map<String, dynamic>),
    work: Work.fromJson(json['work'] as Map<String, dynamic>),
    expenses: Expenses.fromJson(json['expenses'] as Map<String, dynamic>),
    facebook: Facebook.fromJson(json['facebook'] as Map<String, dynamic>),
    twitter: Twitter.fromJson(json['twitter'] as Map<String, dynamic>),
    linkedin: Linkedin.fromJson(json['linkedin'] as Map<String, dynamic>),
    bvn: BVN.fromJson(json['bvn'] as Map<String, dynamic>),
    remita: Remita.fromJson(json['remita'] as Map<String, dynamic>),
    companyProfile: CompanyProfile.fromJson(
        json['company_profile'] as Map<String, dynamic>),
    directors: json['directors'] as List,
    businessIncome:
        HomeAddress.fromJson(json['business_income'] as Map<String, dynamic>),
    operatingExpenses: HomeAddress.fromJson(
        json['operating_expenses'] as Map<String, dynamic>),
    businessAddress:
        HomeAddress.fromJson(json['business_address'] as Map<String, dynamic>),
    idCard: IdCard.fromJson(json['idcard'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserDetailsRequestToJson(UserDetailsRequest instance) =>
    <String, dynamic>{
      'profile': instance.profile.toJson(),
      'next_of_kin': instance.nextOfKin.toJson(),
      'education': instance.education.toJson(),
      'home_address': instance.homeAddress.toJson(),
      'work': instance.work.toJson(),
      'expenses': instance.expenses.toJson(),
      'facebook': instance.facebook.toJson(),
      'twitter': instance.twitter.toJson(),
      'linkedin': instance.linkedin.toJson(),
      'bvn': instance.bvn.toJson(),
      'remita': instance.remita.toJson(),
      'company_profile': instance.companyProfile.toJson(),
      'directors': instance.directors,
      'business_income': instance.businessIncome.toJson(),
      'operating_expenses': instance.operatingExpenses.toJson(),
      'business_address': instance.businessAddress.toJson(),
      'idcard': instance.idCard.toJson(),
    };
