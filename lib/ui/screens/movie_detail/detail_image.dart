import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/data/models/movie_configuration.dart';
import 'package:movieapp/data/models/movie_details.dart';
import 'package:movieapp/providers.dart';
import 'package:movieapp/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailImage extends ConsumerStatefulWidget {
  final MovieDetails details;
  final MovieConfiguration movieConfiguration;

  const DetailImage({
    required this.details,
    required this.movieConfiguration,
    super.key,
  });

  @override
  ConsumerState<DetailImage> createState() => _DetailImageState();
}

class _DetailImageState extends ConsumerState<DetailImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1200),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heroTag = ref.read(heroTagProvider);
    final screenWidth = MediaQuery.of(context).size.width;
    final imageUrl = getMovieDetailsImagePath(
      widget.details,
      widget.movieConfiguration,
    );
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FadeTransition(
                opacity: _animation,
                child: Hero(
                  tag: heroTag,
                  child: imageUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl: imageUrl,
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                            height: 200,
                            width: screenWidth,
                          ),
                        )
                      : emptyWidget,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.details.title,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    addVerticalSpace(4),
                    Text(
                      yearFormat.format(widget.details.releaseDate),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
