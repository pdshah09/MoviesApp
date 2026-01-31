// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(menuManager)
final menuManagerProvider = MenuManagerProvider._();

final class MenuManagerProvider
    extends $FunctionalProvider<MenuManager, MenuManager, MenuManager>
    with $Provider<MenuManager> {
  MenuManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'menuManagerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$menuManagerHash();

  @$internal
  @override
  $ProviderElement<MenuManager> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MenuManager create(Ref ref) {
    return menuManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MenuManager value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MenuManager>(value),
    );
  }
}

String _$menuManagerHash() => r'a9e8709df311fbd3964678108faded0081f21705';

@ProviderFor(eventBus)
final eventBusProvider = EventBusProvider._();

final class EventBusProvider
    extends $FunctionalProvider<EventBus, EventBus, EventBus>
    with $Provider<EventBus> {
  EventBusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventBusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventBusHash();

  @$internal
  @override
  $ProviderElement<EventBus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EventBus create(Ref ref) {
    return eventBus(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventBus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventBus>(value),
    );
  }
}

String _$eventBusHash() => r'9f379482073cc2c43036ff2e369cba327a87d7bb';

@ProviderFor(movieAPIService)
final movieAPIServiceProvider = MovieAPIServiceProvider._();

final class MovieAPIServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<MovieAPIService>,
          MovieAPIService,
          FutureOr<MovieAPIService>
        >
    with $FutureModifier<MovieAPIService>, $FutureProvider<MovieAPIService> {
  MovieAPIServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieAPIServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieAPIServiceHash();

  @$internal
  @override
  $FutureProviderElement<MovieAPIService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MovieAPIService> create(Ref ref) {
    return movieAPIService(ref);
  }
}

String _$movieAPIServiceHash() => r'0086101593f73d58b3688aa93f9362fe17e74bad';

@ProviderFor(movieViewModel)
final movieViewModelProvider = MovieViewModelProvider._();

final class MovieViewModelProvider
    extends
        $FunctionalProvider<
          AsyncValue<MovieViewModel>,
          MovieViewModel,
          FutureOr<MovieViewModel>
        >
    with $FutureModifier<MovieViewModel>, $FutureProvider<MovieViewModel> {
  MovieViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieViewModelProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieViewModelHash();

  @$internal
  @override
  $FutureProviderElement<MovieViewModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MovieViewModel> create(Ref ref) {
    return movieViewModel(ref);
  }
}

String _$movieViewModelHash() => r'8b64539d686cf74ed6881665c96cba31bca9b64a';

@ProviderFor(sharedPrefs)
final sharedPrefsProvider = SharedPrefsProvider._();

final class SharedPrefsProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  SharedPrefsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPrefsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPrefsHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPrefs(ref);
  }
}

String _$sharedPrefsHash() => r'eba279b4efb2d4ef41070faedd17991e4ffd9384';

@ProviderFor(prefs)
final prefsProvider = PrefsProvider._();

final class PrefsProvider
    extends $FunctionalProvider<AsyncValue<Prefs>, Prefs, FutureOr<Prefs>>
    with $FutureModifier<Prefs>, $FutureProvider<Prefs> {
  PrefsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prefsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prefsHash();

  @$internal
  @override
  $FutureProviderElement<Prefs> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Prefs> create(Ref ref) {
    return prefs(ref);
  }
}

String _$prefsHash() => r'286d5a6891847e65488b246f20ce8495331773ef';

@ProviderFor(appRouter)
final appRouterProvider = AppRouterProvider._();

final class AppRouterProvider
    extends $FunctionalProvider<AppRouter, AppRouter, AppRouter>
    with $Provider<AppRouter> {
  AppRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appRouterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appRouterHash();

  @$internal
  @override
  $ProviderElement<AppRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppRouter create(Ref ref) {
    return appRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppRouter>(value),
    );
  }
}

String _$appRouterHash() => r'fc1228daa214cc1ad475cfdeafc6db36a6a237b5';

@ProviderFor(driftDatabase)
final driftDatabaseProvider = DriftDatabaseProvider._();

final class DriftDatabaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<IDatabase>,
          IDatabase,
          FutureOr<IDatabase>
        >
    with $FutureModifier<IDatabase>, $FutureProvider<IDatabase> {
  DriftDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'driftDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$driftDatabaseHash();

  @$internal
  @override
  $FutureProviderElement<IDatabase> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<IDatabase> create(Ref ref) {
    return driftDatabase(ref);
  }
}

String _$driftDatabaseHash() => r'7c0b72c8f00b7b8b3c2d10f5c3c013199c35589d';
