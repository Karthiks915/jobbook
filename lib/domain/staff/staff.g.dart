// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => _$_Staff(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAtTimestamp:
          DateTime.parse(json['created_at_timestamp'] as String),
      updatedAtTimestamp: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at_timestamp': instance.createdAtTimestamp.toIso8601String(),
      'updated_at': instance.updatedAtTimestamp?.toIso8601String(),
    };
