import 'package:practice_v2/domain/equipment/create_equipment.dart';
import 'package:practice_v2/domain/equipment/equipment.dart';
import 'package:practice_v2/infrastructure/operation_result.dart';
import 'package:sembast/sembast.dart';

abstract class EquipmentRepository {
  Stream<Equipment?> getEquipmentStream(String equpmentId);
  Stream<List<Equipment>> getEquipmentListStream();
  Future<CreationResult> createEquipment(CreateEquipment createEquipment);
  Future<UpdateResult> updateEquipment(Equipment equipment);
  Future<DeletionResult> deleteEquipment(String id);
}

class SembastEquipmentRepository implements EquipmentRepository {
  SembastEquipmentRepository(this._database);

  final Database _database;

//Creating collection syntax
  final StoreRef<int, Map<String, dynamic>> _equipmentStore =
      intMapStoreFactory.store('equipment');

  @override
  Future<DeletionResult> deleteEquipment(String equipmentId) async {
    int intequipmentId = int.parse(equipmentId);

    int? value = await _equipmentStore.record(intequipmentId).delete(_database);

    try {
      if (value != null) {
        return DeletionSuccess();
      } else {
        return DeletionNotFound();
      }
    } catch (e) {
      return DeletionException(e.toString());
    }
  }

  @override
  Stream<List<Equipment>> getEquipmentListStream() {
    var query = _equipmentStore.query();

    // Return stream of results
    return query.onSnapshots(_database).map((snapshots) {
      if (snapshots.isEmpty) {
        return [];
      } else {
        // Map each snapshot to a Equipment
        return snapshots.map(
          (equipmentSnapShot) {
            final equipmentMap =
                Map<String, dynamic>.from(equipmentSnapShot.value);
            equipmentMap['id'] = equipmentSnapShot.key.toString();
            return Equipment.fromJson(equipmentMap);
          },
        ).toList();
      }
    });
  }

  @override
  Stream<Equipment?> getEquipmentStream(String equipmentId) {
    int intEquipmentId = int.parse(equipmentId);

    return _equipmentStore
        .record(intEquipmentId)
        .onSnapshot(_database)
        .map((equipmentSnapshot) {
      if (equipmentSnapshot == null) {
        return null;
      } else {
        //We are using .from because RecordSnapshot is read only.

        final equipmentMap = Map<String, dynamic>.from(equipmentSnapshot.value);

        equipmentMap['id'] = equipmentSnapshot.key.toString();

        return Equipment.fromJson(equipmentMap);
      }
    });
  }

  @override
  Future<UpdateResult> updateEquipment(Equipment equipment) async {
    int intEquipmentId = int.parse(equipment.id);

    equipment = equipment.copyWith(updatedAtTimestamp: DateTime.now());

    final equipmentJson = equipment.toJson();
    equipmentJson.remove('id');

    Map<String, dynamic>? value = await _equipmentStore
        .record(intEquipmentId)
        .update(_database, equipmentJson);

    try {
      if (value != null) {
        return UpdateSuccess();
      } else {
        return UpdateNotFound();
      }
    } catch (e) {
      return UpdateException(e.toString());
    }
  }

  @override
  Future<CreationResult> createEquipment(
      CreateEquipment createEquipment) async {
    try {
      final Map<String, dynamic> createEquipmentMap = createEquipment.toJson();

      createEquipmentMap['created_at_timestamp'] =
          DateTime.now().toIso8601String();

      int value = await _equipmentStore.add(_database, createEquipmentMap);
      return CreationSuccess(value.toString());
    } catch (e) {
      return CreationException(e.toString());
    }
  }
}
