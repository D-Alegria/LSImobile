// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdCard _$IdCardFromJson(Map<String, dynamic> json) {
  return IdCard(
    identityType: json['identity_type'] as String,
    nameOnId: json['name_on_id'] as String,
    identityCode: json['identityCode'] as String,
    idMonth: json['idmonth'] as String,
    idYear: json['idyear'] as String,
    picture: json['picture'] as String,
  );
}

Map<String, dynamic> _$IdCardToJson(IdCard instance) => <String, dynamic>{
      'identity_type': instance.identityType,
      'name_on_id': instance.nameOnId,
      'identityCode': instance.identityCode,
      'idmonth': instance.idMonth,
      'idyear': instance.idYear,
      'picture': instance.picture,
    };
