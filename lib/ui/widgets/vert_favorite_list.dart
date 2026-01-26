import 'package:flutter/material.dart';
import 'package:movieapp/data/database/models/favorite.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/widgets/favorite_row.dart';
import 'package:movieapp/utils/utils.dart';
import 'package:movieapp/ui/theme/theme.dart';

class VerticalFavoriteList extends StatelessWidget {
  final List<DBFavorite> favorites;
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    if (favorites.isEmpty) {
      return SliverToBoxAdapter(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/crying.png',
                color: primaryButton,
                height: screenHeight * 0.18,
                width: screenWidth * 0.18,
              ),
            ),
            Text("No Favorites", style: heading1),
          ],
        ),
      );
    }
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
