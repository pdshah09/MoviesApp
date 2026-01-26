import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/ui/movie_viewmodel.dart';
import 'package:movieapp/utils/utils.dart';

const delayTime = Duration(seconds: 5);
const animationTime = Duration(milliseconds: 1560);

class HomeScreenImage extends ConsumerWidget {
  final MovieViewModel movieViewModel;
  final OnMovieTap onMovieTap;

  const HomeScreenImage({
    required this.movieViewModel,
    required this.onMovieTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 374,
      child: CarouselSlider.builder(
        itemCount: movieViewModel.nowPlayingMovies.length,
        itemBuilder: (context, index, realIndex) {
          final currentMovie = movieViewModel.nowPlayingMovies[index];
          final imageUrl = movieViewModel.getImageUrl(
            ImageSize.large,
            currentMovie.backdropPath,
          );
          String uniqueHeroTag = '${currentMovie.posterPath}swiper';

          return GestureDetector(
            onTap: () {
              ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
              onMovieTap(currentMovie.id);
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Hero(
                      tag: uniqueHeroTag,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: imageUrl != null
                            ? CachedNetworkImage(
                                imageUrl: imageUrl,
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                                height: 374,
                                width: screenWidth,
                              )
                            : emptyWidget,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movieViewModel.nowPlayingMovies[index].title,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          addVerticalSpace(4),
                          currentMovie.releaseDate != null
                              ? Text(
                                  yearFormat.format(currentMovie.releaseDate!),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              : Container(),
                          addVerticalSpace(4),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: AutoSizeText(
                              movieViewModel.nowPlayingMovies[index].overview,
                              style: Theme.of(context).textTheme.bodyMedium,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 374,
          viewportFraction: 0.70,
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: delayTime,
          autoPlayAnimationDuration: animationTime,
          autoPlayCurve: Curves.easeInOut,
          enableInfiniteScroll: true,
        ),
      ),
    );
  }
}
