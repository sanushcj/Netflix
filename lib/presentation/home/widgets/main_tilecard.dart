import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constants_.dart';

import 'main_title.dart';

// ignore: must_be_immutable
class MainTileCard extends StatelessWidget {
  MainTileCard({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeScreenTitle(title: title),
          kheight,
          LimitedBox(
            maxHeight: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => const Main_Card(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Main_Card extends StatelessWidget {
  const Main_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 250,
          // color: rrGreyColor,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: const DecorationImage(
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/jeGtaMwGxPmQN5xM4ClnwPQcNQz.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        kwidth
      ],
    );
  }
}
