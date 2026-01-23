import 'package:flutter/material.dart';
import 'package:movieapp/data/models/favorite.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/widgets/favorite_row.dart';
import 'package:movieapp/utils/utils.dart';

class VerticalFavoriteList extends StatelessWidget {
  final List<Favorite> favorites;
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;
  final OnFavoriteResultsTap onFavoritesTap;
  const VerticalFavoriteList({
    super.key,
    required this.favorites,
    required this.movieViewModel,
    required this.onMovieTap,
    required this.onFavoritesTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: FavoriteRow(
            favorite: favorites[index],
            movieViewModel: movieViewModel,
            onMovieTap: (id) => onMovieTap(id),
            onFavoritesTap: (favorite) => onFavoritesTap(favorite),
          ),
        );
      }, childCount: favorites.length),
    );
  }
}
