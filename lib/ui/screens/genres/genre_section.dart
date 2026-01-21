import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/ui/theme/theme.dart';

class GenreState {
  final String genre;
  final bool isSelected;

  GenreState({required this.genre, required this.isSelected});
}

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
  @override
  Widget build(BuildContext context) {
    final genreChips = getGenreChips();
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
                  itemCount: genreChips.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) {
                    return genreChips[index];
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
    return widget.genreStates.asMap().entries.map((entry) {
      final index = entry.key;
      final genreState = entry.value;

      return FilterChip(
        backgroundColor: searchBarBackground,
        selectedColor: buttonGrey,
        label: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            genreState.genre,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        selected: genreState.isSelected,
        onSelected: (selected) {
          setState(() {
            widget.genreStates[index] = GenreState(
              genre: genreState.genre,
              isSelected: selected,
            );
          });
          widget.onGenreSelected(getSelectedGenres());
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
