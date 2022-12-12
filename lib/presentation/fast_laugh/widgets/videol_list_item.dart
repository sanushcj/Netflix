import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';

class VideoListItem extends StatelessWidget {
  VideoListItem({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      child: Stack(
        children: [
          Mutesound(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(radius: 25,),
                  ),
                  RightSideWidgets(iconW: CupertinoIcons.smiley, title: 'LOL'),
                  RightSideWidgets(
                      iconW: CupertinoIcons.plus, title: 'My List'),
                  RightSideWidgets(iconW: CupertinoIcons.share, title: 'Share'),
                  RightSideWidgets(iconW: CupertinoIcons.play, title: 'Play'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mutesound extends StatelessWidget {
  const Mutesound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: CircleAvatar(
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.volume_off)))),
    );
  }
}

class RightSideWidgets extends StatelessWidget {
  RightSideWidgets({super.key, required this.iconW, required this.title});

  IconData iconW;

  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(iconW,color: rrwhiteColor,size: 35,), Text(title),kheight22],
    );
  }
}
