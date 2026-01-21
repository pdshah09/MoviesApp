import 'package:flutter/material.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/ui/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 375
void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      routerConfig: router.config(),
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: createTheme(),
    );
  }
}
