import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'package:netflix/presentation/widgets/app_bar_widgets.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: AppBArWidget(
                title: 'Downloads',
              )),
          body: ListView(
            children: [
              Row(
                children: const [
                  kwidth,
                  Icon(
                    Icons.settings,
                    color: rrwhiteColor,
                  ),
                  kwidth,
                  Text('Smart Downloads'),
                ],
              ),
              const Text('Indroducing Downloads For You'),
              const Text(
                  'We will downloads for you we will download personalized selection of the movies and shows for yo, so there is always something to watch on your device'),
              Container(
                width: size.width,
                height: size.height / 2,
                color: rrwhiteColor,
                child: Stack(
                  children: [
                    Center(child: CircleAvatar(radius: size.width * 0.36))
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: rrbuttoncolor,
                child: const Text(
                  'Set UP',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: rrwhiteColor),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: rrwhiteColor,
                child: const Text(
                  'See what you can download ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: backgroundColor),
                ),
              )
            ],
          )),
    );
  }
}
