// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$movieViewModelHash() => r'0d3337a89171d3592e490518cf9a99861276ac7b';

@ProviderFor(genresList)
final genresListProvider = GenresListProvider._();

final class GenresListProvider
    extends
        $FunctionalProvider<
          List<GenreState>,
          List<GenreState>,
          List<GenreState>
        >
    with $Provider<List<GenreState>> {
  GenresListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'genresListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$genresListHash();

  @$internal
  @override
  $ProviderElement<List<GenreState>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<GenreState> create(Ref ref) {
    return genresList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<GenreState> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<GenreState>>(value),
    );
  }
}

String _$genresListHash() => r'043c43bb14df9f04af70a27e2d15c1bc865fe1c7';

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
