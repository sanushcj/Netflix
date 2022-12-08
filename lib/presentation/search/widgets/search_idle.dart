import 'package:flutter/material.dart';
import 'package:netflix/core/constants/constants_.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
children: const [
  kheight,
  Text('Top Searches' ,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
  kheight
],


    );
  }
}