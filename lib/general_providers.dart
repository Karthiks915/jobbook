import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice_v2/router_observer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'general_providers.g.dart';

@riverpod
RouterObserver routerObserver(RouterObserverRef ref) {
  return RouterObserver();
}

@riverpod
Stream<NavigatorState> routerObserverStream(RouterObserverStreamRef ref) {
  return ref.watch(routerObserverProvider).routeChangeStream;
}

//

@riverpod
Future<String> companyLogoAPI(CompanyLogoAPIRef ref, String domain) async {
  var dio = Dio();
  Response response = await dio.get('https://logo.clearbit.com/$domain');
  return response.requestOptions.uri.toString();
}
