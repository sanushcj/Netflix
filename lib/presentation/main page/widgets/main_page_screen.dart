import 'package:flutter/material.dart';
import 'package:netflix/PRESENTATION/downloads/widgets/download_screen.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh_page.dart';
import 'package:netflix/presentation/home/home_page.dart';
import 'package:netflix/presentation/new_and%20hot/new_and_hot_page.dart';
import 'package:netflix/presentation/search/search_page.dart';

import '../../new_and hot/new_and_hot_page.dart';
import '../bottom_navigation.dart';
// import 'dart:html';

class MainPage extends StatelessWidget {
 MainPage({super.key, });

List _pages = [
  HomeScreen(),
  NewandHotScreen(),
  FastLaughScreen(),
  SearchScreen(),
  DownloadScreen()
  
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int  value, child) {
        return _pages[value];
      },),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
