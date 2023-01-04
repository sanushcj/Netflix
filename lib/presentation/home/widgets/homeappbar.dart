import 'package:flutter/material.dart';

class Home_appbar_Widget extends StatelessWidget {
  const Home_appbar_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Container(
            width: 50,
            height: 40,
            child: Image(
                image: NetworkImage(
                    'https://www.pngplay.com/wp-content/uploads/7/Netflix-Logo-PNG-HD-Quality.png'))),
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
