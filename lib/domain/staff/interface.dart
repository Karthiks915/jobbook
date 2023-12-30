import 'package:practice_v2/domain/staff/create_staff.dart';
import 'package:practice_v2/domain/staff/staff.dart';
import 'package:practice_v2/infrastructure/operation_result.dart';
import 'package:sembast/sembast.dart';

abstract class StaffRepository {
  Stream<Staff?> getStaffStream(String staffId);
  Stream<List<Staff>> getStaffListStream();
  Future<CreationResult> createStaff(CreateStaff createStaff);
  Future<UpdateResult> updateStaff(Staff staff);
  Future<DeletionResult> deleteStaff(String id);
}

class SembastStaffRepository implements StaffRepository {
  SembastStaffRepository(this._database);

  final Database _database;

//Creating collection syntax
  final StoreRef<int, Map<String, dynamic>> _staffStore =
      intMapStoreFactory.store('staff');

  @override
  Future<DeletionResult> deleteStaff(String staffId) async {
    int intStaffId = int.parse(staffId);

    int? value = await _staffStore.record(intStaffId).delete(_database);

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
  Stream<List<Staff>> getStaffListStream() {
    var query = _staffStore.query();

    // Return stream of results
    return query.onSnapshots(_database).map((snapshots) {
      if (snapshots.isEmpty) {
        return [];
      } else {
        // Map each snapshot to a Staff
        return snapshots.map(
          (staffSnapShot) {
            final staffMap = Map<String, dynamic>.from(staffSnapShot.value);
            staffMap['id'] = staffSnapShot.key.toString();
            return Staff.fromJson(staffMap);
          },
        ).toList();
      }
    });
  }

  @override
  Stream<Staff?> getStaffStream(String staffId) {
    int intStaffId = int.parse(staffId);

    return _staffStore
        .record(intStaffId)
        .onSnapshot(_database)
        .map((staffSnapshot) {
      if (staffSnapshot == null) {
        return null;
      } else {
        //We are using .from because RecordSnapshot is read only.

        final staffMap = Map<String, dynamic>.from(staffSnapshot.value);

        staffMap['id'] = staffSnapshot.key.toString();

        return Staff.fromJson(staffMap);
      }
    });
  }

  @override
  Future<UpdateResult> updateStaff(Staff staff) async {
    int intStaffId = int.parse(staff.id);

    staff = staff.copyWith(updatedAtTimestamp: DateTime.now());

    final staffJson = staff.toJson();
    staffJson.remove('id');

    Map<String, dynamic>? value =
        await _staffStore.record(intStaffId).update(_database, staffJson);

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
  Future<CreationResult> createStaff(CreateStaff createStaff) async {
    try {
      final Map<String, dynamic> createStaffMap = createStaff.toJson();

      createStaffMap['created_at_timestamp'] = DateTime.now().toIso8601String();

      int value = await _staffStore.add(_database, createStaffMap);
      return CreationSuccess(value.toString());
    } catch (e) {
      return CreationException(e.toString());
    }
  }
}
