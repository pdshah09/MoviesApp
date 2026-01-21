import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/models/movie.dart';
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

@RoutePage(name: 'GenreRoute')
class GenreScreen extends ConsumerStatefulWidget {
  const GenreScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GenreScreenState();
}

class _GenreScreenState extends ConsumerState<GenreScreen> {
  final expandedNotifier = ValueNotifier<bool>(false);
  late MovieViewModel movieViewModel;
  List<GenreState> genreStates = [];
  List<Movie> currentMovieList = [];

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
    for (final genre in movieViewModel.movieGenres) {
      genreStates.add(GenreState(genre: genre, isSelected: false));
    }
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
                      GenreSearchRow((searchString) {}),
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
                        onGenreSelected: (List<GenreState> states) {},
                      );
                    },
                  ),
                  const SliverDivider(),
                  SortPicker(useSliver: true, onSortSelected: (sorting) {}),
                  SliverToBoxAdapter(
                    child: VerticalMovieList(
                      movies: currentMovieList,
                      onMovieTap: (movieId) {
                        context.router.push(MovieDetailRoute(movieId: movieId));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
