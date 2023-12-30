import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/domain/equipment/providers.dart';

@RoutePage()
class EquipmentPage extends ConsumerWidget {
  const EquipmentPage({super.key, @PathParam('equipmentId') this.equipmentId});
  final String? equipmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final equipmentStream = ref.watch(equipmentStreamProvider(equipmentId!));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Equipment Page$equipmentId'),
          equipmentStream.when(
            data: (data) =>
                data != null ? Text(data.name) : const Text('Record Not Found'),
            loading: () => const CircularProgressIndicator(),
            error: (error, stackTrace) => Text(error.toString()),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
