import 'package:flutter/material.dart';

class MainCardTile extends StatelessWidget {
  final String url;
  const MainCardTile({super.key,required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 150,
        height: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    url))),
      ),
    );
  }
}
