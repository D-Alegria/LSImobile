// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linkedin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Linkedin _$LinkedinFromJson(Map<String, dynamic> json) {
  return Linkedin(
    fullname: json['fullname'] as String,
    picture: json['picture'] as String,
    profile: json['profile'] as String,
    connection: json['connection'] as String,
    location: json['location'] as String,
    industry: json['industry'] as String,
    headline: json['headline'] as String,
    summary: json['summary'] as String,
    email: json['email'] as String,
    companies: json['companies'] as List,
  );
}

Map<String, dynamic> _$LinkedinToJson(Linkedin instance) => <String, dynamic>{
      'fullname': instance.fullname,
      'picture': instance.picture,
      'profile': instance.profile,
      'connection': instance.connection,
      'location': instance.location,
      'industry': instance.industry,
      'headline': instance.headline,
      'summary': instance.summary,
      'email': instance.email,
      'companies': instance.companies,
    };
