import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/homeappbar.dart';
import 'package:netflix/presentation/home/widgets/homecard.dart';
import 'package:netflix/presentation/home/widgets/homefirstsection.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

import '../../application/hotandnew_bloc/hotandnew_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeFirstSection(),
              MainTitle(title: 'Released In The Past Year'),
              Height,
              BlocBuilder<DownloadsBloc, DownloadsState>(
                builder: (context, state) {
                  return LimitedBox(
                    maxHeight: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        state.downloads!.length,
                        (index) => MainCardTile(
                            url:
                                '$imageappendurl${state.downloads![index].posterPath}'),
                      ),
                    ),
                  );
                },
              ),
              Height,
              MainTitle(title: 'Trending Now'),
              Height,
              BlocBuilder<DownloadsBloc, DownloadsState>(
                builder: (context, state) {
                  return LimitedBox(
                    maxHeight: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        state.downloads!.length - 1,
                        (index) => MainCardTile(
                            url:
                                '$imageappendurl${state.downloads![state.downloads!.length - index - 2].posterPath}'),
                      ),
                    ),
                  );
                },
              ),
              Height,
              MainTitle(title: 'Top 10 TV  Shows In India Today'),
              Height,
              BlocBuilder<HotandnewBloc, HotandnewState>(
                builder: (context, state) {
                  return LimitedBox(
                    maxHeight: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                        (index) => NumberCard(
                            index: index,
                            imageurl:
                                '$imageappendurl${state.comingSoonList[index].posterPath}'),
                      ),
                    ),
                  );
                },
              ),
              Height,
              const MainTitle(title: 'South Indian Cinema'),
              Height,
              BlocBuilder<HotandnewBloc, HotandnewState>(
                builder: (context, state) {
                  return LimitedBox(
                    maxHeight: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                        (index) =>  MainCardTile(url: '$imageappendurl${state.comingSoonList[(state.comingSoonList.length)-index-1].posterPath}'),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
