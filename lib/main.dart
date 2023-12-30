import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_v2/app_router.dart';
import 'package:practice_v2/domain/client/providers.dart';

void main() {
  runApp(ProviderScope(child: Consumer(
    builder: (context, ref, child) {
      final states = [
        ref.watch(sembastDatabaseAsyncProvider),
      ];

      if (states.every((state) => state is AsyncData)) {
        return const MainApp();
      }

      if (states.any((state) {
        return state is AsyncError;
      })) {}
      return const CircularProgressIndicator();
    },
  )));
}

class MainApp extends HookWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = useMemoized(() => AppRouter());

    return MaterialApp.router(
      theme: ThemeData(
        shadowColor: Colors.grey[300],
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
    );
  }
}
