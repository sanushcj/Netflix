import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

import 'cuustom_button.dart';

Container homeBigCard(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 1.3,
    width: double.infinity,
    color: rrwhiteColor,
    child: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.3,
          width: double.infinity,
          // color: rrGreyColor,
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sF0Ciu56om4sTR1KtuZvbUoqKrf.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Custom_Button(
                  icon: CupertinoIcons.add,
                  title: 'My List',
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.play_fill,
                    color: backgroundColor,
                  ),
                  label: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Play',
                      style: TextStyle(color: backgroundColor, fontSize: 22),
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(rrwhiteColor),
                  ),
                ),
                Custom_Button(
                  icon: CupertinoIcons.info,
                  title: 'Info',
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
