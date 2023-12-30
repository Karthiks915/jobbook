import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/general_providers.dart';
import 'package:practice_v2/presentation/components/bread_crumb.dart';
import 'package:practice_v2/presentation/components/side_bar.dart';

@RoutePage(name: 'AppShellRoute')
class AppShell extends ConsumerWidget {
  const AppShell({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerObserver = ref.watch(routerObserverProvider);
    return Scaffold(
      body: Row(
        textDirection: TextDirection.rtl,
        children: [
          Expanded(
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Expanded(
                  child: AutoRouter(
                    navigatorObservers: () => [routerObserver],
                  ),
                ),
                const BreadcrumbBar(),
              ],
            ),
          ),
          const SideBar(),
        ],
      ),
    );
  }
}
