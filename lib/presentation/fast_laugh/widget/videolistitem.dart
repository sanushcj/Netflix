import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/downloads/models/downloadsModel.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class videolistitemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads Moviesdata;

  const videolistitemInheritedWidget(
      {super.key, required this.widget, required this.Moviesdata})
      : super(child: widget);

  @override
  bool updateShouldNotify(covariant videolistitemInheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.Moviesdata != Moviesdata;
  }

  static videolistitemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<videolistitemInheritedWidget>();
  }
}

class VideolistItem extends StatelessWidget {
  final index;
  const VideolistItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final posterpath =
        videolistitemInheritedWidget.of(context)?.Moviesdata.posterPath;
    // final dummyvideourls = videourls[index % videourls.length];
    final videourl = dummyvideourls[index % dummyvideourls.length];
    return Stack(
      children: [
        FasstlaghVideoPlayer(videourl: videourl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.4),
                  radius: 25,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        size: 30,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: posterpath == null
                          ? null
                          : NetworkImage('$imageappendurl$posterpath'),
                    ),
                    Height,
                    Height,
                    ValueListenableBuilder(
                      valueListenable: likedVideoIdsNorifierr,
                      builder: (BuildContext c, Set<int> newlikedListids, _) {
                        final _index = index;
                        if (newlikedListids.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastLaughBloc>(context)
                              //     .add(Unlikevideo(id: index));
                              likedVideoIdsNorifierr.value.remove(_index);
                              likedVideoIdsNorifierr.notifyListeners();
                            },
                            child: const VideoActionWidget(
                                icon: Icons.favorite, title: 'LIKED'),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            // BlocProvider.of<FastLaughBloc>(context)
                            //     .add(LikeVideo(id: index));
                            likedVideoIdsNorifierr.value.add(_index);
                            likedVideoIdsNorifierr.notifyListeners();
                          },
                          child: const VideoActionWidget(
                              icon: Icons.emoji_emotions, title: 'LOL'),
                        );
                      },
                    ),
                    const VideoActionWidget(icon: Icons.add, title: 'MY LIST'),
                    GestureDetector(
                        onTap: () {
                          final moviename = videolistitemInheritedWidget
                              .of(context)
                              ?.Moviesdata
                              .title;
                          if (moviename != null) {
                            Share.share(moviename);
                          }
                        },
                        child: const VideoActionWidget(
                            icon: Icons.share, title: 'Share')),
                    const VideoActionWidget(
                        icon: Icons.play_arrow, title: 'Play')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
          color: whitecolor,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        Height,
        Height,
      ],
    );
  }
}

class FasstlaghVideoPlayer extends StatefulWidget {
  final String videourl;
  final void Function(bool isPlaying) onStateChanged;

  const FasstlaghVideoPlayer(
      {super.key, required this.videourl, required this.onStateChanged});

  @override
  State<FasstlaghVideoPlayer> createState() => _FasstlaghVideoPlayerState();
}

class _FasstlaghVideoPlayerState extends State<FasstlaghVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videourl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
