import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'package:netflix/presentation/widgets/app_bar_widgets.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});

  final _widgetLists = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: AppBArWidget(
                title: 'Downloads',
              )),
          body: ListView.separated(
            padding: const EdgeInsets.all(5),
            itemBuilder: (context, index) => _widgetLists[index],
            separatorBuilder: (context, index) => const SizedBox(
              height: 25,
            ),
            itemCount: _widgetLists.length,
          )),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight,
        Row(
          children: const [
            Icon(
              Icons.settings,
              color: rrwhiteColor,
            ),
            kwidth,
            Text('Smart Downloads'),
          ],
        ),
      ],
    );
  }
}

class DownloadImagewidget extends StatelessWidget {
  const DownloadImagewidget(
      {Key? key,
      required this.size,
      required this.downloadScreenImg,
      required this.margin,
      this.angle = 0})
      : super(key: key);

  final Size size;
  final String downloadScreenImg;
  final EdgeInsets margin;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          // margin: margin,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    downloadScreenImg.toString(),
                  ))),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List downloadScreenImg = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fpEa4iAlbE6Byu89vUUChQ42lhd.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/apbrbWs8M9lyOpJYU5WXrpFbk1Z.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2llbXc2BOkLkBGgcNJCRbrWedUO.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Indroducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: rrwhiteColor, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        kheight,
        const Text(
            'We will downloads for you we will download personalized selection of the movies and shows for you, so there is always something to watch on your device',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: rrGreyColor,
            )),
        SizedBox(
          width: size.width,
          height: size.height / 2.1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                  child: CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: rrGreyColor.withOpacity(0.5),
              )),
              DownloadImagewidget(
                size: Size(size.width * 0.4, size.width * 0.6),
                downloadScreenImg: downloadScreenImg[0],
                margin: const EdgeInsets.only(left: 160,),
                angle: 25,
              ),
              DownloadImagewidget(
                size: Size(size.width * 0.4, size.width * 0.6),
                downloadScreenImg: downloadScreenImg[1],
                margin: const EdgeInsets.only(right: 160,),
                angle: -25,
              ),
              DownloadImagewidget(
                size: Size(size.width * 0.45, size.width * 0.69),
                downloadScreenImg: downloadScreenImg[2],
                margin: const EdgeInsets.only(left: 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            onPressed: () {},
            color: rrbuttoncolor,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: rrwhiteColor),
              ),
            ),
          ),
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          onPressed: () {},
          color: rrwhiteColor,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: backgroundColor),
            ),
          ),
        ),
      ],
    );
  }
}
