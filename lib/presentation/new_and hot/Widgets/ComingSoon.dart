import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constants/constants_.dart';
import 'package:netflix/presentation/home/widgets/cuustom_button.dart';

buidComingSoon(context) {

  return ListView.builder(
    itemBuilder: (context, index) => ComingSoonTile(),
    itemCount: 10,
      
  
  );
}

class ComingSoonTile extends StatelessWidget {
  const ComingSoonTile({
    Key? key,
  
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
      final SizeW = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 430,
      // width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            SizedBox(
              width: 50,
              height: 200,
              child: Column(
                children: const [
                  Text(
                    'Feb',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('11', style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            Stack(children: [
              Container(
                height: 200,
                width: SizeW - 55,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jsoz1HlxczSuTx0mDl2h0lxy36l.jpg",
                        ),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  right: 10,
                  bottom: 10,
                  child: CircleAvatar(
                      backgroundColor: backgroundColor.withOpacity(0.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.volume_off,
                          )))),
            ]),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  Text(
                    'Avengerss',
                    style: TextStyle(fontSize: 40),
                  ),
                  kheight,
                  Text(
                    'Coming on Sunday',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                child: Row(
                  children: [
                    Custom_Button(
                      title: 'Remind Me',
                      icon: CupertinoIcons.bell,
                      FontSize: 10,
                    ),
                    kwidth,
                    Custom_Button(
                      title: 'Info',
                      icon: CupertinoIcons.info,
                      FontSize: 10,
                    ),
                    kwidth,
                  ],
                ),
              )
            ],
          ),
          kheight30,
          const Text(
            'Thor 3',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),kheight,  const Text(
           "Earth's Mightiest Heroes stand as the planet's first line of defense against the most powerful threats in the universe. The Avengers began as a group of extraordinary individuals who were assembled to defeat Loki and his Chitauri army in New York City.",
            style: TextStyle(fontSize: 12, color: rrGreyColor),
          ),kheight
        ],
      ),
    );
  }
}