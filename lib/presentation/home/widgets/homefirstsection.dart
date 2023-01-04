import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

import 'package:netflix/presentation/home/widgets/homeappbar.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class HomeFirstSection extends StatelessWidget {
  const HomeFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Home_appbar_Widget(),
        Stack(
          children: [
            Container(
              child: const Image(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sF0Ciu56om4sTR1KtuZvbUoqKrf.jpg')),
            ),
            Column(
              children: [
                Height,
                Height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'TV Shows',
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      'Movies',
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      'Categories',
                      style: TextStyle(fontSize: 19),
                    )
                  ],
                ),
                const SizedBox(
                  height: 470,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.add,
                          color: whitecolor,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: whitecolor,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        Positioned(
                          left: 8,
                          top: 2,
                          child: Row(
                            children: const [
                              Icon(Icons.play_arrow, size: 25),
                              Text(
                                'Play',
                                style: TextStyle(
                                    color: blackcolor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.info_outlined,
                          color: whitecolor,
                        ),
                        Text('Info',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
