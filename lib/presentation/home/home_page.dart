
import 'package:flutter/material.dart';
import 'widgets/main_tilecard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children:  [
          MainTileCard(title: 'Realeased In the past'),
          MainTileCard(title: 'Trending Now'),
           MainTileCard(title: 'Tense Dramas'),
            MainTileCard(title: 'South Indian Cinema'),
        ],
      ),
    ));
  }
}

// ignore: must_be_immutable
