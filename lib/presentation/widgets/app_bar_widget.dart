import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar_widget extends StatelessWidget {
  final String title;
  const Appbar_widget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            )),
        Container(
          width: 30,
          height: 30,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
