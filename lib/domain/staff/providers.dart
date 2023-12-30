import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/staff/interface.dart';
import 'package:practice_v2/domain/staff/staff.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
StaffRepository staffRepository(StaffRepositoryRef ref) {
  return SembastStaffRepository(ref.watch(sembastDatabaseProvider));
}

@riverpod
Stream<Staff?> staffStream(StaffStreamRef ref, String staffId) {
  return ref.watch(staffRepositoryProvider).getStaffStream(staffId);
}

@riverpod
Stream<List<Staff>> staffListStream(StaffListStreamRef ref) {
  return ref.watch(staffRepositoryProvider).getStaffListStream();
}
