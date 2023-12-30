// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppShellRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppShell(),
      );
    },
    ClientListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ClientListPage(),
      );
    },
    ClientRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ClientRouteArgs>(
          orElse: () =>
              ClientRouteArgs(clientId: pathParams.getString('clientId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClientPage(
          key: args.key,
          clientId: args.clientId,
        ),
      );
    },
    EquipmentListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EquipmentListPage(),
      );
    },
    EquipmentRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EquipmentRouteArgs>(
          orElse: () => EquipmentRouteArgs(
              equipmentId: pathParams.optString('equipmentId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EquipmentPage(
          key: args.key,
          equipmentId: args.equipmentId,
        ),
      );
    },
    ErrorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ErrorPage(),
      );
    },
    JobRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JobRouteArgs>(
          orElse: () => JobRouteArgs(jobId: pathParams.optString('jobId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: JobPage(
          key: args.key,
          jobId: args.jobId,
        ),
      );
    },
    ScheduleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SchedulePage(),
      );
    },
    StaffListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StaffListPage(),
      );
    },
    StaffRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<StaffRouteArgs>(
          orElse: () =>
              StaffRouteArgs(staffId: pathParams.getString('staffId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: StaffPage(
          key: args.key,
          staffId: args.staffId,
        ),
      );
    },
  };
}

/// generated route for
/// [AppShell]
class AppShellRoute extends PageRouteInfo<void> {
  const AppShellRoute({List<PageRouteInfo>? children})
      : super(
          AppShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppShellRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ClientListPage]
class ClientListRoute extends PageRouteInfo<void> {
  const ClientListRoute({List<PageRouteInfo>? children})
      : super(
          ClientListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ClientPage]
class ClientRoute extends PageRouteInfo<ClientRouteArgs> {
  ClientRoute({
    Key? key,
    required String clientId,
    List<PageRouteInfo>? children,
  }) : super(
          ClientRoute.name,
          args: ClientRouteArgs(
            key: key,
            clientId: clientId,
          ),
          rawPathParams: {'clientId': clientId},
          initialChildren: children,
        );

  static const String name = 'ClientRoute';

  static const PageInfo<ClientRouteArgs> page = PageInfo<ClientRouteArgs>(name);
}

class ClientRouteArgs {
  const ClientRouteArgs({
    this.key,
    required this.clientId,
  });

  final Key? key;

  final String clientId;

  @override
  String toString() {
    return 'ClientRouteArgs{key: $key, clientId: $clientId}';
  }
}

/// generated route for
/// [EquipmentListPage]
class EquipmentListRoute extends PageRouteInfo<void> {
  const EquipmentListRoute({List<PageRouteInfo>? children})
      : super(
          EquipmentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EquipmentListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EquipmentPage]
class EquipmentRoute extends PageRouteInfo<EquipmentRouteArgs> {
  EquipmentRoute({
    Key? key,
    String? equipmentId,
    List<PageRouteInfo>? children,
  }) : super(
          EquipmentRoute.name,
          args: EquipmentRouteArgs(
            key: key,
            equipmentId: equipmentId,
          ),
          rawPathParams: {'equipmentId': equipmentId},
          initialChildren: children,
        );

  static const String name = 'EquipmentRoute';

  static const PageInfo<EquipmentRouteArgs> page =
      PageInfo<EquipmentRouteArgs>(name);
}

class EquipmentRouteArgs {
  const EquipmentRouteArgs({
    this.key,
    this.equipmentId,
  });

  final Key? key;

  final String? equipmentId;

  @override
  String toString() {
    return 'EquipmentRouteArgs{key: $key, equipmentId: $equipmentId}';
  }
}

/// generated route for
/// [ErrorPage]
class ErrorRoute extends PageRouteInfo<void> {
  const ErrorRoute({List<PageRouteInfo>? children})
      : super(
          ErrorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ErrorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JobPage]
class JobRoute extends PageRouteInfo<JobRouteArgs> {
  JobRoute({
    Key? key,
    String? jobId,
    List<PageRouteInfo>? children,
  }) : super(
          JobRoute.name,
          args: JobRouteArgs(
            key: key,
            jobId: jobId,
          ),
          rawPathParams: {'jobId': jobId},
          initialChildren: children,
        );

  static const String name = 'JobRoute';

  static const PageInfo<JobRouteArgs> page = PageInfo<JobRouteArgs>(name);
}

class JobRouteArgs {
  const JobRouteArgs({
    this.key,
    this.jobId,
  });

  final Key? key;

  final String? jobId;

  @override
  String toString() {
    return 'JobRouteArgs{key: $key, jobId: $jobId}';
  }
}

/// generated route for
/// [SchedulePage]
class ScheduleRoute extends PageRouteInfo<void> {
  const ScheduleRoute({List<PageRouteInfo>? children})
      : super(
          ScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StaffListPage]
class StaffListRoute extends PageRouteInfo<void> {
  const StaffListRoute({List<PageRouteInfo>? children})
      : super(
          StaffListRoute.name,
          initialChildren: children,
        );

  static const String name = 'StaffListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StaffPage]
class StaffRoute extends PageRouteInfo<StaffRouteArgs> {
  StaffRoute({
    Key? key,
    required String staffId,
    List<PageRouteInfo>? children,
  }) : super(
          StaffRoute.name,
          args: StaffRouteArgs(
            key: key,
            staffId: staffId,
          ),
          rawPathParams: {'staffId': staffId},
          initialChildren: children,
        );

  static const String name = 'StaffRoute';

  static const PageInfo<StaffRouteArgs> page = PageInfo<StaffRouteArgs>(name);
}

class StaffRouteArgs {
  const StaffRouteArgs({
    this.key,
    required this.staffId,
  });

  final Key? key;

  final String staffId;

  @override
  String toString() {
    return 'StaffRouteArgs{key: $key, staffId: $staffId}';
  }
}
