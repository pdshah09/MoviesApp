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
    final screenWidth = MediaQuery.of(context).size.width - 32;

    return SizedBox(
      height: 374,
      child: CarouselSlider.builder(
        itemCount: movieViewModel.nowPlayingMovies.length,
        itemBuilder: (context, index, realIndex) {
          final currentMovie = movieViewModel.nowPlayingMovies[index];
          String uniqueHeroTag = '${currentMovie.image}swiper';

          return GestureDetector(
            onTap: () {
              ref.read(heroTagProvider.notifier).state = uniqueHeroTag;
              onMovieTap(index);
            },
            child: Hero(
              tag: uniqueHeroTag,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: CachedNetworkImage(
                  imageUrl: currentMovie.image,
                  alignment: Alignment.center,
                  fit: BoxFit.scaleDown,
                  height: 374,
                  width: screenWidth,
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 374,
          viewportFraction: screenWidth / MediaQuery.of(context).size.width,
          autoPlay: true,
          autoPlayInterval: delayTime,
          autoPlayAnimationDuration: animationTime,
          autoPlayCurve: Curves.easeInOut,
          enableInfiniteScroll: true,
        ),
      ),
    );
  }
}
