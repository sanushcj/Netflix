import 'package:flutter/material.dart';

class Search_Title extends StatelessWidget {
   Search_Title({
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