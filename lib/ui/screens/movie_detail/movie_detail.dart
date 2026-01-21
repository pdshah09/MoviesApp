import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/models/movie.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/screens/genres/genre_section.dart';
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
  const MovieDetail(this.movieId, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovieDetailState();
}

class _MovieDetailState extends ConsumerState<MovieDetail> {
  final favoriteNotifier = ValueNotifier<bool>(false);
  late MovieViewModel movieViewModel;
  List<GenreState> genreStates = [];
  late Movie currentMovie;

  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        currentMovie = movieViewModel.findMovieById(widget.movieId);
        buildGenreState();
        return buildScreen();
      },
    );
  }

  void buildGenreState() {
    for (final genre in movieViewModel.movieGenres) {
      genreStates.add(GenreState(genre: genre, isSelected: false));
    }
  }

  Widget buildScreen() {
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
                          children: [DetailImage(movieUrl: currentMovie.image)],
                        ),
                        GenreRow(genres: genreStates),
                        MovieOverview(
                          details:
                              'Follow the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a path of revenge against the conspirators who destroyed his family. Facing a choice between the loveof his life and the fate of the known universe, Paul endeavors to prevent a terrible future only he can foresee.',
                        ),
                        ValueListenableBuilder(
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
                                      favoriteNotifier.value = false;
                                    } else {
                                      favoriteNotifier.value = true;
                                    }
                                  },
                                );
                              },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 8),
                          child: Text(
                            'Trailers',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        Trailer(
                          movieVideos: [
                            'https://img.youtube.com/vi/U2Qp5pL3ovA/hqdefault.jpg',
                          ],
                          onVideoTap: (video) {
                            context.router.push(
                              VideoPageRoute(movieVideo: 'U2Qp5pL3ovA'),
                            );
                          },
                        ),
                      ]),
                    ),
                    HorizontalCast(castList: ['', '']),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
