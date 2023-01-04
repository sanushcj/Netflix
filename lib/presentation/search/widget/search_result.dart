import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTexttitle(title: 'Movies & Tv Shows'),
        Height,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              crossAxisSpacing: 10,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                final movie = state.searchResultList[index];
                return MainCard(
                  imageurl: '$imageappendurl${movie.posterimageurl}',
                );
              }),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageurl;

  const MainCard({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(imageurl), fit: BoxFit.cover)),
    );
  }
}
