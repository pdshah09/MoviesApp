import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/models/genre_state.dart';
import 'package:movieapp/data/models/movie_response.dart';
import 'package:movieapp/data/models/movie_results.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/router/app_routes.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/screens/genres/genre_search_row.dart';
import 'package:movieapp/ui/screens/genres/genre_section.dart';
import 'package:movieapp/ui/screens/genres/sort_picker.dart';
import 'package:movieapp/ui/theme/theme.dart';
import 'package:movieapp/ui/widgets/not_ready.dart';
import 'package:movieapp/ui/widgets/sliver_divider.dart';
import 'package:movieapp/ui/widgets/vert_movie_list.dart';
import 'package:movieapp/utils/utils.dart';

const String genreStringKey = 'GenreKey';

@RoutePage(name: 'GenreRoute')
class GenreScreen extends ConsumerStatefulWidget {
  const GenreScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GenreScreenState();
}

class _GenreScreenState extends ConsumerState<GenreScreen> {
  late MovieViewModel movieViewModel;
  String currentSearchString = '';
  List<GenreState> genreStates = [];
  List<MovieResults> currentMovieList = [];
  final moviesNotifier = ValueNotifier<List<MovieResults>>([]);
  final expandedNotifier = ValueNotifier<bool>(false);
  MovieResponse? currentMovieResponse;
  Sorting seletedSort = Sorting.aToz;

  @override
  Widget build(BuildContext context) {
    final movieViewModelAsync = ref.watch(movieViewModelProvider);
    return movieViewModelAsync.when(
      error: (e, st) => Text(e.toString()),
      loading: () => const NotReady(),
      data: (viewModel) {
        movieViewModel = viewModel;
        buildGenreState();
        return buildScreen();
      },
    );
  }

  void buildGenreState() {
    genreStates.clear();
    for (final genre in movieViewModel.movieGenres!) {
      genreStates.add(GenreState(genre: genre, isSelected: false));
    }
    getSelectedGenres();
    search();
  }

  Widget buildScreen() {
    return SafeArea(
      child: Container(
        color: screenBackground,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16.0, 0.0, 24.0),
                        child: Text(
                          'Find a Movie',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      GenreSearchRow((searchString) {
                        currentSearchString = searchString;
                        currentMovieResponse = null;
                        FocusScope.of(context).unfocus();
                        expandedNotifier.value = false;
                        search();
                      }),
                    ]),
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: expandedNotifier,
                    builder: (BuildContext context, bool value, Widget? child) {
                      return GenreSection(
                        genreStates: genreStates,
                        isExpanded: value,
                        onGenresExpanded: (expanded) {
                          expandedNotifier.value = expanded;
                        },
                        onGenreSelected: (genres) {
                          genreStates = genres;
                          saveSelectedGenres();
                          currentMovieResponse = null;
                        },
                      );
                    },
                  ),
                  const SliverDivider(),
                  SortPicker(
                    useSliver: true,
                    onSortSelected: (sorting) {
                      seletedSort = sorting;
                      sortMovies();
                    },
                  ),
                  ValueListenableBuilder<List<MovieResults>>(
                    valueListenable: moviesNotifier,
                    builder:
                        (
                          BuildContext context,
                          List<MovieResults> value,
                          Widget? child,
                        ) {
                          return VerticalMovieList(
                            movies: value,
                            movieViewModel: movieViewModel,
                            onMovieTap: (movieId) {
                              context.router.push(
                                MovieDetailRoute(movieId: movieId),
                              );
                            },
                          );
                        },
                  ),
                  SliverToBoxAdapter(child: const SizedBox(height: 25)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<MovieResults>?> search() async {
    if (currentSearchString.isEmpty && genreStates.isEmpty) {
      moviesNotifier.value = <MovieResults>[];
      return <MovieResults>[];
    }

    // 1st, search by title
    // Search through the list for the search string
    final pageNumber = (currentMovieResponse?.page == null)
        ? 1
        : (currentMovieResponse!.page + 1);
    if (currentSearchString.isNotEmpty) {
      currentMovieResponse = await movieViewModel.searchMovies(
        currentSearchString,
        pageNumber,
      );
      currentMovieList = currentMovieResponse!.results;
    }
    // 2nd Search by genre if there is no search string
    if (currentSearchString.isEmpty && genreStates.isNotEmpty) {
      final buffer = getGenreString();
      currentMovieResponse = await movieViewModel.searchMoviesByGenre(
        buffer.toString(),
        pageNumber,
      );
      currentMovieList = currentMovieResponse!.results;
    } else if (genreStates.isNotEmpty && currentMovieList.isNotEmpty) {
      currentMovieList = currentMovieList.where((movie) {
        for (final selectedGenre in genreStates) {
          if (movie.genreIds.contains(selectedGenre.genre.id)) {
            return true;
          }
        }
        return false;
      }).toList();
    }
    sortMovies();
    return currentMovieList;
  }

  StringBuffer getGenreString() {
    final buffer = StringBuffer();
    genreStates.map((e) {
      if (e.isSelected) {
        if (buffer.isNotEmpty) {
          buffer.write('|');
        }
        buffer.write(e.genre.id);
      }
    }).toList();
    return buffer;
  }

  void sortMovies() {
    if (currentMovieList.isEmpty) {
      return;
    }
    currentMovieList = currentMovieList.sorted((a, b) {
      switch (seletedSort) {
        case Sorting.aToz:
          return a.originalTitle.compareTo(b.originalTitle);
        case Sorting.zToa:
          return b.originalTitle.compareTo(a.originalTitle);
        case Sorting.rating:
          return b.popularity.compareTo(a.popularity);
        case Sorting.year:
          if (a.releaseDate != null && b.releaseDate != null) {
            return a.releaseDate!.compareTo(b.releaseDate!);
          }
      }
      return 0;
    });
    moviesNotifier.value = currentMovieList;
  }

  void saveSelectedGenres() async {
    final prefs = await ref.read(prefsProvider.future);
    final genreNameList = genreStates.map((state) => state.genre.name).toList();
    prefs.setString(genreStringKey, genreNameList.join(','));
  }

  void getSelectedGenres() async {
    final prefs = await ref.read(prefsProvider.future);
    final genreNameList = prefs.getString(genreStringKey)?.split(',');
    if (genreNameList?.isNotEmpty == true) {
      for (final genreName in genreNameList!) {
        var genreState = genreStates.firstWhereOrNull(
          (genre) => genre.genre.name == genreName,
        );
        if (genreState != null) {
          final index = genreStates.indexOf(genreState);
          genreState = genreState.copyWith(isSelected: true);
          genreStates[index] = genreState;
        }
      }
    }
  }
}
