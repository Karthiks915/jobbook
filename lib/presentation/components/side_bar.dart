import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/general_providers.dart';

class SideBar extends ConsumerWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerStream = ref.watch(routerObserverStreamProvider);
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).shadowColor,
                blurRadius: 8,
                spreadRadius: 8)
          ]),
      width: 60,
      child: routerStream.when(
        data: (navigatorState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  navigatorState.context.router
                      .replaceAll([const ScheduleRoute()]);
                },
                icon: const Icon(Icons.calendar_month),
              ),
              IconButton(
                  onPressed: () {
                    navigatorState.context.router
                        .replaceAll([const ClientListRoute()]);
                  },
                  icon: const Icon(Icons.people)),
              IconButton(
                onPressed: () {
                  navigatorState.context.router
                      .replaceAll([const EquipmentListRoute()]);
                },
                icon: const Icon(Icons.work),
              ),
              IconButton(
                onPressed: () {
                  navigatorState.context.router
                      .replaceAll([const StaffListRoute()]);
                },
                icon: const Icon(Icons.badge),
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
