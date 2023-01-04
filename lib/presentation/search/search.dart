import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Intitialize());
    });

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                    color: Colors.grey),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context)
                      .add(searchMovie(movieQuery: value));
                }),
            Height,

            // Expanded(child: SearchResult()),
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return SearchIdelewidget();
                } else {
                  return SearchResult();
                }
              },
            ))
          ],
        ),
      )),
    );
  }
}
