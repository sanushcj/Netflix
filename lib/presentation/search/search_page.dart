import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CupertinoSearchTextField(
            backgroundColor: rrGreyColor.withOpacity(0.4),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: rrGreyColor,
            ),
            suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,color: rrGreyColor,),style: TextStyle(color: rrwhiteColor),
          ),
        ],
      ),
    )));
  }
}
