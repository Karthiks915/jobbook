import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practice_v2/presentation/pages/client_list_page.dart';
import 'package:practice_v2/presentation/pages/equipment_list_page.dart';
import 'package:practice_v2/presentation/pages/client_page.dart';
import 'package:practice_v2/presentation/pages/job_page.dart';
import 'package:practice_v2/presentation/pages/app_shell.dart';
import 'package:practice_v2/presentation/pages/equipment_page.dart';
import 'package:practice_v2/presentation/pages/error_page.dart';
import 'package:practice_v2/presentation/pages/schedule_page.dart';
import 'package:practice_v2/presentation/pages/staff_list_page.dart';
import 'package:practice_v2/presentation/pages/staff_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.custom(durationInMilliseconds: 0);

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: AppShellRoute.page,
          initial: true,
          children: [
            AutoRoute(page: ClientListRoute.page),
            AutoRoute(page: ScheduleRoute.page, initial: true),
            AutoRoute(page: ClientRoute.page),
            AutoRoute(page: JobRoute.page),
            AutoRoute(page: EquipmentRoute.page),
            AutoRoute(page: ErrorRoute.page),
            AutoRoute(page: EquipmentListRoute.page),
            AutoRoute(page: StaffListRoute.page),
            AutoRoute(page: StaffRoute.page),
          ],
        )
      ];
}
