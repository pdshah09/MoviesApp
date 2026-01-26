import 'package:flutter/material.dart';
import 'package:movieapp/data/models/movie_results.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'movie_row.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/utils/utils.dart';

class VerticalMovieList extends ConsumerWidget {
  final List<MovieResults> movies;
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;

  const VerticalMovieList({
    super.key,
    required this.movies,
    required this.movieViewModel,
    required this.onMovieTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: movies.length, (
        BuildContext context,
        int index,
      ) {
        return MovieRow(
          movie: movies[index],
          movieViewModel: movieViewModel,
          onMovieTap: (movie) {
            onMovieTap(movie.id);
          },
        );
      }),
    );
  }
}
