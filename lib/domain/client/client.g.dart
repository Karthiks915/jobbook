// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAtTimestamp:
          DateTime.parse(json['created_at_timestamp'] as String),
      updatedAtTimestamp: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at_timestamp': instance.createdAtTimestamp.toIso8601String(),
      'updated_at': instance.updatedAtTimestamp?.toIso8601String(),
    };
