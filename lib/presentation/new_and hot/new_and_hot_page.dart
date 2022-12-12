import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

import '../widgets/app_bar_widgets.dart';

class NewandHotScreen extends StatelessWidget {
  const NewandHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:
       SafeArea(
          child: Column(
            children: [
              AppBArWidget(title: 'Hot & New'),
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
                  // TabBarView(children: _buid)
            ],
          ),
        ),
      );
  }
}
