
import 'package:flutter/material.dart';

class HomeScreenTitle extends StatelessWidget {
   HomeScreenTitle({
    Key? key, required this.title
  }) : super(key: key);

String title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title ,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}