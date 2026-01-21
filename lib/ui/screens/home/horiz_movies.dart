import 'package:flutter/material.dart';
import 'package:movieapp/data/models/movie.dart';
import 'package:movieapp/ui/widgets/movie_widget.dart';
import 'package:movieapp/utils/utils.dart';

class HorizontalMovies extends StatelessWidget {
  final MovieType movieType;
  final OnMovieTap onMovieTap;
  final List<Movie> movies;
  const HorizontalMovies({
    required this.movieType,
    required this.onMovieTap,
    required this.movies,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 142,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieWidget(
            movie: movies[index],
            onMovieTap: onMovieTap,
            movieType: movieType,
          );
        },
      ),
    );
  }
}
