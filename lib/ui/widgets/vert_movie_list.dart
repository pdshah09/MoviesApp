import 'package:flutter/material.dart';
import 'package:movieapp/data/models/movie.dart';
import 'movie_row.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef OnMovieTap = void Function(int movieId);

class VerticalMovieList extends ConsumerWidget {
  final List<Movie> movies;
  final OnMovieTap onMovieTap;

  const VerticalMovieList({
    super.key,
    required this.movies,
    required this.onMovieTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (movies.isEmpty) {
      return const SizedBox.shrink();
    }
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: movies.length, (
        BuildContext context,
        int index,
      ) {
        return MovieRow(movie: movies[index], onMovieTap: onMovieTap);
      }),
    );
  }
}
