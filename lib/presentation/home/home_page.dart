import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'package:netflix/presentation/home/widgets/top_10tile.dart';
import 'widgets/home_page_firstcard.dart';
import 'widgets/main_tilecard.dart';

// ignore: non_constant_identifier_names
ValueNotifier<bool> ScrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: ScrollNotifier,
          builder: (context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  ScrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  ScrollNotifier.value = true;
                }
                return true;
              },
              child: SafeArea(
                child: Stack(children: [
                  ListView(
                    children: [
                      homeBigCard(context),
                      MainTileCard(title: 'Realeased In the past'),
                      MainTileCard(title: 'Trending Now'),
                      Top10Tile(title: 'Top 10 TV Shows in India Today'),
                      MainTileCard(title: 'Tense Dramas'),
                      MainTileCard(title: 'South Indian Cinema'),
                    ],
                  ),
                  ScrollNotifier.value == true ?
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 600000),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        color: backgroundColor.withOpacity(0.2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/Asset/img/netflix icon.png',
                                  height: 45,
                                  width: 50,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kwidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: rrwhiteColor,
                                ),
                                kwidth
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w100),
                                ),
                                // Spacer(),
                                Text('Movies',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100)),
                                // Spacer(),
                                Text('Categories',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100)),
                                // Spacer(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ) : kheight
                ]),
              ),
            );
          }),
    );
  }
}
