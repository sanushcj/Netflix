import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

class SearchIdelewidget extends StatelessWidget {
  const SearchIdelewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTexttitle(title: 'Top Searches'),
        Height,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return const Center(child: Text('Error while getting Data'));
              } else if (state.idleList.isEmpty) {
                return const Center(child: Text('List is Empty'));
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];

                    return TopsearchItemTile(
                      imageurl: '$imageappendurl${movie.backdroppath}',
                      title: movie.title ?? 'No Title Found',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Height;
                  },
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopsearchItemTile extends StatelessWidget {
  final String title;
  final String imageurl;
  const TopsearchItemTile(
      {super.key, required this.title, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screenwidth.width * 0.33,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        Width,
        Expanded(
            child: Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )),
        Icon(
          CupertinoIcons.play_circle,
          color: whitecolor,
          size: 36,
        )
      ],
    );
  }
}
