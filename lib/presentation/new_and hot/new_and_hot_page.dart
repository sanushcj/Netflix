import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'package:netflix/presentation/new_and%20hot/Widgets/ComingSoon.dart';
import '../home/widgets/cuustom_button.dart';
import '../widgets/app_bar_widgets.dart';

class NewandHotScreen extends StatelessWidget {
  const NewandHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBArWidget(title: 'Hot & New'),
            kheight,
            TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                    color: rrwhiteColor,
                    borderRadius: BorderRadius.circular(30)),
                labelColor: backgroundColor,
                labelStyle: const TextStyle(
                    color: backgroundColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                unselectedLabelColor: rrwhiteColor,
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  ),
                ]),
            kheight,
            Expanded(
                child: TabBarView(children: [
              buidComingSoon(context),
              _buidEveryoneWatching()
            ]))
          ],
        ),
      ),
    );
  }
}



_buidEveryoneWatching() {
  return ListView(
    children: [
      kwidth30,
    ],
  );
}
