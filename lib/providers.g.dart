// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(movieAPIService)
final movieAPIServiceProvider = MovieAPIServiceProvider._();

final class MovieAPIServiceProvider
    extends
        $FunctionalProvider<MovieAPIService, MovieAPIService, MovieAPIService>
    with $Provider<MovieAPIService> {
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
  $ProviderElement<MovieAPIService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MovieAPIService create(Ref ref) {
    return movieAPIService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieAPIService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieAPIService>(value),
    );
  }
}

String _$movieAPIServiceHash() => r'1fcc456233061aa0ae60254828e4d2e61c6ba3cf';

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

String _$movieViewModelHash() => r'391332b31ebd14a673e656f93321ac7c0c2dfdc2';

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
