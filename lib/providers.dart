import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:movieapp/data/database/database_interface.dart';
import 'package:movieapp/data/database/drift/drift_database.dart';
import 'package:movieapp/utils/prefs.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:movieapp/network/movie_api_service.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'providers.g.dart';

final heroTagProvider = StateProvider<String>((ref) {
  return '';
});

@Riverpod(keepAlive: true)
MovieAPIService movieAPIService(Ref ref) => MovieAPIService();

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final database = await ref.read(driftDatabaseProvider.future);
  final model = MovieViewModel(
    database: database,
    movieAPIService: ref.read(movieAPIServiceProvider),
  );
  await model.setup();
  return model;
}

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPrefs(Ref ref) =>
    SharedPreferences.getInstance();

@Riverpod(keepAlive: true)
Future<Prefs> prefs(Ref ref) async {
  final sharedPrefs = await ref.read(sharedPrefsProvider.future);
  return Prefs(sharedPrefs);
}

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter();

@Riverpod(keepAlive: true)
Future<IDatabase> driftDatabase(Ref ref) {
  return Future.value(DriftDatabase());
}
