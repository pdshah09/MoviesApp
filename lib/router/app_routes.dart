import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/data/models/movie_videos.dart';
import 'package:movieapp/ui/screens/main_screen.dart';
import 'package:movieapp/ui/screens/home/home_screen.dart';
import 'package:movieapp/ui/screens/genres/genre_screen.dart';
import 'package:movieapp/ui/screens/favorites/favorite_screen.dart';
import 'package:movieapp/ui/screens/movie_detail/movie_detail.dart';
import 'package:movieapp/ui/screens/videos/video_page.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'Genre', page: GenreRoute.page),
        AutoRoute(path: 'favorites', page: FavoriteRoute.page),
      ],
    ),
    CustomRoute(
      path: '/details/:movieId',
      page: MovieDetailRoute.page,
      maintainState: false,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: VideoPageRoute.page,
      maintainState: false,
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 500,
    ),
  ];
}
