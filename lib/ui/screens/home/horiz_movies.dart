import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/models/movie_results.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/ui/widgets/movie_widget.dart';
import 'package:movieapp/utils/utils.dart';

class HorizontalMovies extends ConsumerWidget {
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<MovieResults> movies;
  const HorizontalMovies({
    required this.movieType,
    required this.onMovieTap,
    required this.movies,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsync = ref.watch(movieViewModelProvider);
    return movieAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => Container(),
      data: (viewModel) {
        return SizedBox(
          height: 142,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final imageUrl = viewModel.getImageUrl(
                ImageSize.small,
                movies[index].posterPath,
              );
              return imageUrl != null
                  ? MovieWidget(
                      movieId: movies[index].id,
                      movieUrl: imageUrl,
                      onMovieTap: onMovieTap,
                      movieType: movieType,
                    )
                  : emptyWidget;
            },
          ),
        );
      },
    );
  }
}
