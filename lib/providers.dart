import 'package:flutter_riverpod/legacy.dart';
import 'package:movieapp/network/movie_api_service.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/screens/genres/genre_section.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
MovieAPIService movieAPIService(Ref ref) => MovieAPIService();

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final model = MovieViewModel(
    movieAPIService: ref.read(movieAPIServiceProvider),
  );
  await model.setup();
  return model;
}

final heroTagProvider = StateProvider<String>((ref) {
  return '';
});

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter();
