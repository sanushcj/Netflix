import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

class Custom_Button extends StatelessWidget {
 Custom_Button({
    Key? key,required this.title ,required this.icon, this.FontSize,this.IconSize
  }) : super(key: key);

String title;
IconData icon;
double? FontSize = 20;
double? IconSize = 25;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: Icon(icon, size: IconSize,color: rrwhiteColor,),
      ),
      Text(title,style: TextStyle(fontSize: FontSize),)
    ],);
  }
}

// ignore: must_be_immutable
