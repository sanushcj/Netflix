import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Search_Title(title: 'Top Searches '),
        kheight, 
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrenWidth = MediaQuery.of(context).size.width;
    // final ScreenHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          width: ScrenWidth * 0.35,
          height: 75,
          // color: rrGreyColor,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jsoz1HlxczSuTx0mDl2h0lxy36l.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        const Expanded(
            child: Text('Thor And Thunder',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
        const Icon(
          CupertinoIcons.play_circle,
          color: rrwhiteColor,
          size: 50,
        )
      ],
    );
  }
}
