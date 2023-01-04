import 'package:flutter/material.dart';

import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screenhome.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/news_and_hot.dart';
import 'package:netflix/presentation/search/search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastlaugh(),
    ScreenSearch(),
    ScreenDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
