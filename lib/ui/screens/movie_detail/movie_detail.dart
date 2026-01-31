import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:lumberdash/lumberdash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/database/models/database_models.dart';
import 'package:movieapp/data/models/movie_credits.dart';
import 'package:movieapp/data/models/movie_details.dart';
import 'package:movieapp/data/models/movie_videos.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/screens/movie_detail/genre_row.dart';
import 'package:movieapp/ui/screens/movie_detail/button_row.dart';
import 'package:movieapp/ui/screens/movie_detail/detail_image.dart';
import 'package:movieapp/ui/screens/movie_detail/movie_overview.dart';
import 'package:movieapp/ui/screens/movie_detail/trailer.dart';
import 'package:movieapp/ui/theme/theme.dart';
import 'package:movieapp/ui/widgets/horiz_cast.dart';
import 'package:movieapp/ui/widgets/not_ready.dart';

@RoutePage(name: 'MovieDetailRoute')
class MovieDetail extends ConsumerStatefulWidget {
  final int movieId;

  const MovieDetail(@PathParam('movieId') this.movieId, {super.key});

  @override
  ConsumerState<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends ConsumerState<MovieDetail> {
  late MovieViewModel movieViewModel;
  MovieCredits? credits;
  MovieVideos? movieVideos;
  List<DBFavorite> favorites = [];
  final favoriteNotifier = ValueNotifier<bool>(false);
  int currentFavoriteId = -1;

  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        getFavorites();
        return buildScreen();
      },
    );
  }

  Future getFavorites() async {
    favorites = await movieViewModel.getFavorites();
    final fav = favorites.firstWhereOrNull(
      (favorite) => favorite.movieId == widget.movieId,
    );

    if (fav != null) {
      currentFavoriteId = fav.id;
      favoriteNotifier.value = true;
    } else {
      currentFavoriteId = -1;
      favoriteNotifier.value = false;
    }
  }

  bool isMovieFavorite(int id) {
    return favorites.firstWhereOrNull((favorite) => favorite.movieId == id) !=
        null;
  }

  Widget buildScreen() {
    return FutureBuilder(
      future: loadData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const NotReady();
        }
        if (snapshot.hasError) {
          logMessage('Error: ${snapshot.error.toString()}');
          return Text(snapshot.error.toString());
        }
        final movieDetails = snapshot.data as MovieDetails?;
        if (movieDetails == null) {
          return const NotReady();
        }
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: screenBackground,
              leading: CupertinoNavigationBarBackButton(
                color: Colors.white,
                onPressed: () {
                  context.router.maybePopTop();
                },
              ),
              centerTitle: false,
              title: Text(
                'Back',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            body: Container(
              color: screenBackground,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate([
                            Stack(
                              children: [
                                DetailImage(
                                  details: movieDetails,
                                  movieConfiguration:
                                      movieViewModel.movieConfiguration!,
                                ),
                              ],
                            ),
                            GenreRow(genres: movieDetails.genres),
                            MovieOverview(details: movieDetails),
                            ValueListenableBuilder<bool>(
                              valueListenable: favoriteNotifier,
                              builder:
                                  (
                                    BuildContext context,
                                    bool value,
                                    Widget? child,
                                  ) {
                                    return ButtonRow(
                                      favoriteSelected: favoriteNotifier.value,
                                      onFavoriteSelected: () async {
                                        if (favoriteNotifier.value) {
                                          if (currentFavoriteId != -1) {
                                            await movieViewModel.removeFavorite(
                                              currentFavoriteId,
                                            );
                                          }
                                          favoriteNotifier.value = false;
                                          currentFavoriteId = -1;
                                        } else {
                                          await movieViewModel.saveFavorite(
                                            movieDetails,
                                          );

                                          // reload favorites to get DB id
                                          await getFavorites();

                                          favoriteNotifier.value = true;
                                        }
                                      },
                                    );
                                  },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                bottom: 8,
                              ),
                              child: Text(
                                'Trailers',
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge,
                              ),
                            ),
                            Trailer(
                              movieVideos: movieVideos?.results,
                              onVideoTap: (video) {
                                context.router.push(
                                  VideoPageRoute(movieVideo: video),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                bottom: 16,
                                top: 16,
                              ),
                              child: Text(
                                'Cast',
                                style: Theme.of(
                                  context,
                                ).textTheme.headlineLarge,
                              ),
                            ),
                          ]),
                        ),
                        HorizontalCast(
                          movieViewModel: movieViewModel,
                          castList: credits?.cast ?? [],
                        ),
                        SliverToBoxAdapter(child: const SizedBox(height: 30)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future loadData() async {
    credits = await movieViewModel.getMovieCredits(widget.movieId);
    movieVideos = await movieViewModel.getMovieVideos(widget.movieId);
    return movieViewModel.getMovieDetails(widget.movieId);
  }
}
