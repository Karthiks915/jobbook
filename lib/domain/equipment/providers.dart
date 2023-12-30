import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/equipment/equipment.dart';
import 'package:practice_v2/domain/equipment/interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
EquipmentRepository equipmentRepository(EquipmentRepositoryRef ref) {
  return SembastEquipmentRepository(ref.watch(sembastDatabaseProvider));
}

@riverpod
Stream<Equipment?> equipmentStream(EquipmentStreamRef ref, String equipmentId) {
  return ref.watch(equipmentRepositoryProvider).getEquipmentStream(equipmentId);
}

@riverpod
Stream<List<Equipment>> equipmentListeStream(EquipmentListeStreamRef ref) {
  return ref.watch(equipmentRepositoryProvider).getEquipmentListStream();
}