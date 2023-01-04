// ignore_for_file: unnecessary_const

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/hotandnew_bloc/hotandnew_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Appbar_widget(
                title: 'Hot & New',
              )),
          titleSpacing: 0,
          backgroundColor: blackcolor,
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                color: whitecolor, borderRadius: BorderRadius.circular(40)),
            labelColor: blackcolor,
            unselectedLabelColor: whitecolor,
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            tabs: const [
              const SizedBox(
                height: 35.0,
                child: const Tab(text: '🍿 Coming Soon'),
              ),
              const SizedBox(
                height: 35.0,
                child: Tab(text: "🐔 Everyone's Watching"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabviewComingsoon(),
            TabviewEveryone(),
          ],
        ),
      ),
    );
  }
}

class TabviewComingsoon extends StatelessWidget {


  const TabviewComingsoon({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const LoaddatainComingsoon());
    });
    final screenwidth = MediaQuery.of(context).size.width;
    // log((screenwidth * 0.03).toString());
    final PaddingWidth = screenwidth * 0.03;
    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text('Error while loading List'),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text(' List is empty'),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final movie = state.comingSoonList[index];
                  final _date = DateTime.parse(movie.releaseDate!);
                  final formateddate = DateFormat.yMMMMd('en_US').format(_date);
                  return Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: screenwidth * 0.1,
                          child: Column(
                            children:  [
                              Text(
                                formateddate.split(' ').first.substring(0,3).toUpperCase(),
                                style: const TextStyle(color: whitecolor),
                              ),
                              Text(movie.releaseDate!.split('-')[1],
                                  style: const TextStyle(
                                      color: whitecolor,
                                      fontSize: 31,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: (screenwidth * 0.9) - 20,
                              height: 160,
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "$imageappendurl${movie.backdropPath}")),
                            ),
                            Height,
                            SizedBox(
                              width: (screenwidth * 0.9) - 20,
                              height: 40,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: screenwidth / 2.0,
                                    child: Text(
                                      movie.originalTitle ?? 'No title',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Spacer(),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.notifications_none_outlined,
                                        color: whitecolor,
                                      ),
                                      Text(
                                        'Remind Me',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Width,
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.info_outline,
                                        color: whitecolor,
                                      ),
                                      Text(
                                        'Info',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Width
                                ],
                              ),
                            ),
                            Text('Coming On Friday'),
                            Height,
                            Container(
                              width: (screenwidth * 0.9) - 20,
                              child: Text(
                                movie.overview ?? 'No Description',
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: state.comingSoonList.length),
          );
        }
      },
    );
  }
}

class TabviewEveryone extends StatelessWidget {
  // final String posterpath;
  // final String moviename;
  // final String description;

  const TabviewEveryone({
    super.key,
    // required this.posterpath,
    // required this.moviename,
    // required this.description
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(LoaddatainEveryoneswathing());
    });

    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text('Error while loading List'),
          );
        } else if (state.EveryonesWathcingnList.isEmpty) {
          return const Center(
            child: Text(' List is empty'),
          );
        } else {
          return ListView.separated(
              itemBuilder: (context, index) {
                final tv = state.EveryonesWathcingnList[index];
                log(state.EveryonesWathcingnList.length.toString());
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: screenwidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: screenwidth,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "$imageappendurl${tv.backdropPath}" ??
                                      'https://www.themoviedb.org/t/p/original/3VE5mS5HDQ2FOxlMuzKCP14avAk.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Height,
                        Row(
                          children: [
                            Container(
                                width: screenwidth / 2.0,
                                child: Text(
                                  tv.originalName ?? 'Not title Found',
                                  style: TextStyle(fontSize: 27),
                                )),Spacer(),
                            Width,
                            Column(
                              children: const [
                                Icon(
                                  Icons.send,
                                  color: whitecolor,
                                  size: 27,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text('Share')
                              ],
                            ),
                            Width,
                            Column(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: whitecolor,
                                  size: 27,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text('My List')
                              ],
                            ),
                            Width,
                            Column(
                              children: const [
                                Icon(
                                  Icons.play_arrow,
                                  color: whitecolor,
                                  size: 27,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text('Play')
                              ],
                            ),Width
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          tv.originalName ?? 'No Title Fopund',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          tv.overview ?? 'No Description Found',
                          textAlign: TextAlign.justify,
                        ),
                        Height,
                        const Text(
                          'Sudpenseful * Action Thriller * Action & Adventure',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Height;
              },
              itemCount: state.EveryonesWathcingnList.length);
        }
      },
    );
  }
}
