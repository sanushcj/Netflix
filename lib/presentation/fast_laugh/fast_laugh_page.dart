
import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widgets/videol_list_item.dart';
class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
children: 
List.generate(10, (index) => VideoListItem(index: index))
      ))
    );
  }
}