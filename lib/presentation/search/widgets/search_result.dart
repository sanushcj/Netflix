import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'search_title.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        kheight,
        Search_Title(
          title: 'Movies & TV',
        ),
        kheight,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 10,
            childAspectRatio: 1.4/2,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: List.generate(20, (index) {
                return const MainCard();
              })),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gpOXOfpxnAcPoG3kYQRSlaRpWoX.jpg",
                  ),
                  fit: BoxFit.cover),borderRadius: BorderRadius.circular(7)),
    );
  }
}
