import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/staff/create_staff.dart';
import 'package:practice_v2/domain/staff/providers.dart';

@RoutePage()
class StaffListPage extends ConsumerWidget {
  const StaffListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staffListStream = ref.watch(staffListStreamProvider);
    final staffRepository = ref.watch(staffRepositoryProvider);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Staff List'),
            staffListStream.when(
              data: (staffList) {
                return Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          height: 500,
                          width: 500,
                          child: ListView.builder(
                              itemCount: staffList.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(staffList[index].name),
                                  onTap: () {
                                    context.router.push(StaffRoute(
                                        staffId: staffList[index].id));
                                  },
                                  trailing: IconButton(
                                    onPressed: () {
                                      print(staffList[index].id);
                                      print(ref
                                          .watch(sembastDatabaseAsyncProvider));
                                      ref
                                          .watch(staffRepositoryProvider)
                                          .deleteStaff(staffList[index].id);
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                );
                              }),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          staffRepository
                              .createStaff(CreateStaff(name: 'Raj Smith'));
                        },
                        child: const Text('Create Staff'),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text(error.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
