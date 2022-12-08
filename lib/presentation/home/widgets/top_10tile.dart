import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'main_title.dart';
import 'package:bordered_text/bordered_text.dart';

// ignore: must_be_immutable
class Top10Tile extends StatelessWidget {
  Top10Tile({super.key, required this.title});
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
                (index) => Top10Card(index: index),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Top10Card extends StatelessWidget {
  Top10Card({Key? key, required this.index}) : super(key: key);
  final index;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          Container(
            width: 170,
            height: 250,
            // color: rrGreyColor,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                    image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/w3MKmd4KTf5dkJDo3WAhV4K73RN.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          kwidth
        ],
      ),
      Positioned(
        bottom: -25,
        left: -5,
        child: BorderedText(
          strokeWidth: 4.0,
          strokeColor:rrwhiteColor,
          child: Text(
            "${index+1}",
            style: const TextStyle(
              color: backgroundColor,
              fontSize: 120.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ]);
  }
}
