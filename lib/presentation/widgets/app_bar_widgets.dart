// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../core/constants/constants_.dart';

class AppBArWidget extends StatelessWidget {
 AppBArWidget({super.key, required this.title});
String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text( title ,style: const TextStyle(fontSize: 30,fontWeight:FontWeight.bold ),),
        kwidth,
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
          size: 30,
        ),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kwidth
      ],
    );
  }
}
