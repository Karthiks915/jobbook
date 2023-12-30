import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/equipment/create_equipment.dart';
import 'package:practice_v2/domain/equipment/providers.dart';
import 'package:practice_v2/general_providers.dart';

@RoutePage()
class EquipmentListPage extends ConsumerWidget {
  const EquipmentListPage({super.key});

  @override 
  Widget build(BuildContext context, WidgetRef ref) {
    final equipmentListStream = ref.watch(equipmentListeStreamProvider);
    final companyLogoProvider = ref.watch(companyLogoAPIProvider('google.com'));
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            companyLogoProvider.when(
              data: (logo) {
                return Image.network(logo);
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text(error.toString()),
            ),
            SizedBox(
              height: 400,
              width: 400,
              child: equipmentListStream.when(
                data: (equipments) {
                  return ListView.builder(
                      itemCount: equipments.length,
                      itemBuilder: (context, index) {
                        final equipment = equipments[index];
                        return ListTile(
                          title: Text(
                              'Equipment ${equipment.id} - ${equipment.name}'),
                          onTap: () {
                            context.router.push(
                              EquipmentRoute(equipmentId: equipment.id),
                            );
                          },
                          trailing: IconButton(
                              onPressed: () {
                                ref
                                    .watch(equipmentRepositoryProvider)
                                    .deleteEquipment(equipment.id);
                              },
                              icon: const Icon(Icons.delete)),
                        );
                      });
                },
                loading: () => const CircularProgressIndicator(),
                error: (error, stackTrace) => Text(error.toString()),
              ),
            ),
            const Text('Equipment List Page'),
            ElevatedButton(
              onPressed: () async {
                await ref
                    .watch(equipmentRepositoryProvider)
                    .createEquipment(CreateEquipment(name: 'Nails'));

                print(ref.watch(sembastDatabaseAsyncProvider));
              },
              child: const Text('Add Equipment'),
            ),
          ],
        ),
      ),
    );
  }
}
