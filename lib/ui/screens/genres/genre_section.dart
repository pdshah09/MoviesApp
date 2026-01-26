import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/models/genre_state.dart';
import 'package:movieapp/ui/theme/theme.dart';

typedef OnGenreSelected = void Function(List<GenreState>);
typedef OnGenresExpanded = void Function(bool);

class GenreSection extends ConsumerStatefulWidget {
  final bool isExpanded;
  final List<GenreState> genreStates;
  final OnGenresExpanded onGenresExpanded;
  final OnGenreSelected onGenreSelected;

  const GenreSection({
    required this.genreStates,
    required this.isExpanded,
    required this.onGenresExpanded,
    required this.onGenreSelected,
    super.key,
  });

  @override
  ConsumerState<GenreSection> createState() => _GenreSectionState();
}

class _GenreSectionState extends ConsumerState<GenreSection> {
  List<Widget> chips = [];

  @override
  Widget build(BuildContext context) {
    if (chips.isEmpty) {
      chips = getGenreChips();
    }
    return SliverList(
      delegate: SliverChildListDelegate([
        ExpansionPanelList(
          expandIconColor: Colors.white,
          expansionCallback: (int index, bool expanded) {
            setState(() {
              widget.onGenresExpanded(expanded);
            });
          },
          children: [
            ExpansionPanel(
              isExpanded: widget.isExpanded,
              backgroundColor: screenBackground,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Row(
                    children: [
                      Text(
                        'Genres',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            totalSelected().toString(),
                            style: verySmallText,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              body: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: chips.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) {
                    return chips[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  List<Widget> getGenreChips() {
    return widget.genreStates.mapIndexed((index, element) {
      final genre = widget.genreStates[index].genre;
      return FilterChip(
        backgroundColor: searchBarBackground,
        selectedColor: buttonGrey,
        label: Text(genre.name, style: Theme.of(context).textTheme.labelSmall),
        selected: widget.genreStates[index].isSelected,
        onSelected: (selected) {
          setState(() {
            widget.genreStates[index] = GenreState(
              genre: genre,
              isSelected: !widget.genreStates[index].isSelected,
            );
            widget.onGenreSelected(getSelectedGenres());
          });
        },
      );
    }).toList();
  }

  List<GenreState> getSelectedGenres() {
    return widget.genreStates.where((e) => e.isSelected).toList();
  }

  int totalSelected() {
    return getSelectedGenres().length;
  }
}
