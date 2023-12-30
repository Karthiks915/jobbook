import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/client/providers.dart';
import 'package:practice_v2/domain/equipment/providers.dart';
import 'package:practice_v2/domain/job/providers.dart';
import 'package:practice_v2/domain/staff/providers.dart';
import 'package:practice_v2/general_providers.dart';
import 'package:practice_v2/presentation/components/pop_index.dart';

class BreadcrumbBar extends ConsumerWidget {
  const BreadcrumbBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerObserverStream = ref.watch(routerObserverStreamProvider);

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor,
                blurRadius: 8,
                spreadRadius: 8)
          ]),
      height: 50,
      child: routerObserverStream.when(
        data: (navigatorState) {
          final StackRouter router = navigatorState.context.router;
          return Row(
            children: [
              IconButton(
                onPressed: () {
                  navigatorState.context.router.pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: router.stack
                    .mapIndexed(
                      (index, route) => switch (route.name) {
                        JobRoute.name => Breadcrumb(
                            label: ref
                                .watch(jobStreamProvider(
                                    route.routeData.pathParams.rawMap['jobId']))
                                .when(data: (job) {
                              return job == null
                                  ? 'Job Not Found'
                                  : 'Job ${route.routeData.pathParams.rawMap['jobId']} - ${job.buildingName}';
                            }, error: (object, stackTrace) {
                              return object.toString();
                            }, loading: () {
                              return '...';
                            }),
                            icon: Icons.work,
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        EquipmentListRoute.name => Breadcrumb(
                            label: 'EquipmentListPage >',
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        ScheduleRoute.name => Breadcrumb(
                            label: 'SchedulePage >',
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        ClientRoute.name => Breadcrumb(
                            label: ref
                                .watch(clientStreamProvider(route
                                    .routeData.pathParams.rawMap['clientId']))
                                .when(data: (client) {
                              return client == null
                                  ? 'Client Not Found'
                                  : client.name;
                            }, error: (object, stackTrace) {
                              return object.toString();
                            }, loading: () {
                              return '...';
                            }),
                            icon: Icons.person,
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        ClientListRoute.name => Breadcrumb(
                            label: 'ClientListPage >',
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        StaffListRoute.name => Breadcrumb(
                            label: 'StaffListPage >',
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        StaffRoute.name => Breadcrumb(
                            label: ref
                                .watch(staffStreamProvider(route
                                    .routeData.pathParams.rawMap['staffId']))
                                .when(data: (staff) {
                              return staff == null
                                  ? 'Staff Not Found'
                                  : staff.name;
                            }, error: (object, stackTrace) {
                              return object.toString();
                            }, loading: () {
                              return '...';
                            }),
                            icon: Icons.work,
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        EquipmentRoute.name => Breadcrumb(
                            label: ref
                                .watch(equipmentStreamProvider(route.routeData
                                    .pathParams.rawMap['equipmentId']))
                                .when(data: (equipment) {
                              return equipment == null
                                  ? 'Equipment Not Found'
                                  : 'Equipment ${route.routeData.pathParams.rawMap['equipmentId']} - ${equipment.name}';
                            }, error: (object, stackTrace) {
                              return object.toString();
                            }, loading: () {
                              return '...';
                            }),
                            icon: Icons.work,
                            onPressed: () {
                              popToIndex(router, index);
                            },
                          ),
                        _ => const Text('Unknown Route'),
                      },
                    )
                    .toList(),
              ),
            ],
          );
        },
        loading: () => const Text('Loading'),
        error: (err, stack) => const Text('Error'),
      ),
    );
  }
}

class Breadcrumb extends StatelessWidget {
  const Breadcrumb({super.key, required this.label, this.icon, this.onPressed});
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton.icon(
        onPressed: onPressed,
        icon: icon != null
            ? Icon(
                icon,
                color: Colors.grey[800],
              )
            : const SizedBox.shrink(),
        label: Text(
          label,
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),
    );
  }
}
