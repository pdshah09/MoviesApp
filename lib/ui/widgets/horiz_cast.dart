import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/data/models/movie_credits.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/ui/widgets/cast_image.dart';
import 'package:movieapp/utils/utils.dart';

class HorizontalCast extends ConsumerWidget {
  final List<MovieCast> castList;
  final MovieViewModel movieViewModel;

  const HorizontalCast({
    required this.movieViewModel,
    required this.castList,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100.0,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: 100.0,
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          var imageUrl = movieViewModel.getImageUrl(
            ImageSize.small,
            castList[index].profilePath,
          );
          return imageUrl != null
              ? CastImage(imageUrl: imageUrl, name: castList[index].name)
              : CastImage(imageUrl: '', name: castList[index].name);
        }, childCount: castList.length),
      ),
    );
  }
}
