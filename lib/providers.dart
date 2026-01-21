import 'package:flutter_riverpod/legacy.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/screens/genres/genre_section.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
Future<MovieViewModel> movieViewModel(Ref ref) async {
  final model = MovieViewModel();
  await model.setup();
  return model;
}

final heroTagProvider = StateProvider<String>((ref) {
  return '';
});

@riverpod
List<GenreState> genresList(Ref ref) => [
  GenreState(genre: 'Action', isSelected: false),
  GenreState(genre: 'Adventure', isSelected: false),
  GenreState(genre: 'Crime', isSelected: false),
  GenreState(genre: 'Mystery', isSelected: false),
  GenreState(genre: 'War', isSelected: false),
  GenreState(genre: 'Comedy', isSelected: false),
  GenreState(genre: 'Romance', isSelected: false),
  GenreState(genre: 'History', isSelected: false),
  GenreState(genre: 'Music', isSelected: false),
  GenreState(genre: 'Drama', isSelected: false),
  GenreState(genre: 'Thriller', isSelected: false),
  GenreState(genre: 'Family', isSelected: false),
  GenreState(genre: 'Horror', isSelected: false),
  GenreState(genre: 'Western', isSelected: false),
  GenreState(genre: 'Science Fiction', isSelected: false),
  GenreState(genre: 'Animation', isSelected: false),
  GenreState(genre: 'Documentation', isSelected: false),
  GenreState(genre: 'TV Movie', isSelected: false),
  GenreState(genre: 'Fantasy', isSelected: false),
];

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter();
