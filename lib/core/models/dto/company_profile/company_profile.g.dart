// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyProfile _$_$_CompanyProfileFromJson(Map<String, dynamic> json) {
  return _$_CompanyProfile(
    companyName: json['company_name'] as String,
    companyEmail: json['company_email'] as String,
    companyWebsite: json['company_website'] as String,
    tin: json['tin'] as String,
    rcNumber: json['rc_number'] as String,
    businessSector: json['business_sector'] as String,
    noOfEmployees: json['no_of_employees'] as String,
    businessStartMonth: json['business_start_month'] as String,
    businessStartYear: json['business_start_year'] as String,
    contactPerson: json['contact_person'] as String,
    contactPersonPhoneNumber: json['contact_person_phone_number'] as String,
  );
}

Map<String, dynamic> _$_$_CompanyProfileToJson(_$_CompanyProfile instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'company_email': instance.companyEmail,
      'company_website': instance.companyWebsite,
      'tin': instance.tin,
      'rc_number': instance.rcNumber,
      'business_sector': instance.businessSector,
      'no_of_employees': instance.noOfEmployees,
      'business_start_month': instance.businessStartMonth,
      'business_start_year': instance.businessStartYear,
      'contact_person': instance.contactPerson,
      'contact_person_phone_number': instance.contactPersonPhoneNumber,
    };
