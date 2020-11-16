// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    json['connected_card_id'] as String,
  );
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'connected_card_id': instance.connectedCardId,
    };
