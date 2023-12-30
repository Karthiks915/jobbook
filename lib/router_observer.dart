import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterObserver extends AutoRouteObserver {
  //first we create the stream and use the keyword broadcast so that we can listen to it multiple times

  final _routeChangeController = StreamController<NavigatorState>.broadcast();

  Stream<NavigatorState> get routeChangeStream => _routeChangeController.stream;

  void _onRouteChanged(Route route) {
    _routeChangeController.add(route.navigator!);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _onRouteChanged(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _onRouteChanged(route);
  }
}
