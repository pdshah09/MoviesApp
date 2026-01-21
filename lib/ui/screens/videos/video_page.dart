import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieapp/ui/theme/theme.dart';
import 'package:movieapp/utils/utils.dart';
import 'package:pod_player/pod_player.dart';

@RoutePage(name: 'VideoPageRoute')
class VideoPage extends ConsumerStatefulWidget {
  final String movieVideo;
  const VideoPage(this.movieVideo, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoPageState();
}

class _VideoPageState extends ConsumerState<VideoPage> {
  late final PodPlayerController podPlayerController;
  @override
  void initState() {
    super.initState();
    final playVideoFrom = PlayVideoFrom.youtube(
      youtubeUrlFromId(widget.movieVideo),
    );
    podPlayerController = PodPlayerController(
      playVideoFrom: playVideoFrom,
      podPlayerConfig: const PodPlayerConfig(autoPlay: true),
    )..initialise();
  }

  @override
  void dispose() {
    super.dispose();
    podPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return getVideoPlayer(context);
  }

  Widget getVideoPlayer(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: screenBackground,
        // leading: BackButton(
        //   color: Colors.white,
        //   onPressed: () {
        //     // dispose();
        //     Navigator.push(context,MaterialPageRoute(builder: (context) => const MainScreen()));
        //   },
        // ),
        // centerTitle: false,
        // title: Text('Back', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: screenBackground,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PodVideoPlayer(
                controller: podPlayerController,
                matchVideoAspectRatioToFrame: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
