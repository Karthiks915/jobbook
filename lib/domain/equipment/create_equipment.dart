import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_equipment.freezed.dart';
part 'create_equipment.g.dart';

@freezed
class CreateEquipment with _$CreateEquipment {

  factory CreateEquipment({
    required String name,
  }) = _CreateEquipment;

  factory CreateEquipment.fromJson(Map<String, dynamic> json) => _$CreateEquipmentFromJson(json);
}