import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

class Custom_Button extends StatelessWidget {
 Custom_Button({
    Key? key,required this.title ,required this.icon
  }) : super(key: key);

String title;
IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: Icon(icon, size: 25,color: rrwhiteColor,),
      ),
      Text(title,style: TextStyle(fontSize: 20),)
    ],);
  }
}

// ignore: must_be_immutable
