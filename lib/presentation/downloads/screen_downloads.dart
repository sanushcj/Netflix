import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<DownloadsBloc>(context).add(
          DownloadsEvent.getDownloadsImages(),
        );
      },
    );
    return RefreshIndicator(
      onRefresh: () async {
        return  BlocProvider.of<DownloadsBloc>(context)
            .add(DownloadsEvent.getDownloadsImages());
      },
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Appbar_widget(
              title: 'Downloads',
            )),
        body: ListView(children: [
          Row(
            children: const [
              Width,
              Icon(
                Icons.settings,
                color: whitecolor,
              ),
              Width,
              Text(
                'Smart Download',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              'Indroducing Downloads for you',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Height,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              textAlign: TextAlign.center,
              'We will download a personalized movies and shows for you, so there is always something to watch on your devive ',
              style: TextStyle(fontSize: 17),
            ),
          ),
          BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              // print('object');
              // print('$imageappendurl${state.downloads![0]}');
              return Container(
                height: size.width,
                width: size.height,
                color: blackcolor,
                child: state.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : Stack(alignment: Alignment.center, children: [
                        CircleAvatar(
                          radius: size.width * 0.35,
                          backgroundColor: Color.fromARGB(255, 51, 50, 50),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0, top: 40),
                          child: Transform.rotate(
                            angle: 20 * pi / 180,
                            child: Container(
                              height: size.width * 0.48,
                              width: size.width * 0.34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      '$imageappendurl${state.downloads![0].posterPath}'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180.0, top: 40),
                          child: Transform.rotate(
                            angle: -20 * pi / 180,
                            child: Container(
                              height: size.width * 0.48,
                              width: size.width * 0.34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      '$imageappendurl${state.downloads![1].posterPath}'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: size.width * 0.55,
                            width: size.width * 0.39,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    '$imageappendurl${state.downloads![2].posterPath}'),
                              ),
                            ),
                          ),
                        ),
                      ]),
              );
            },
          ),
          SizedBox(
            width: size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MaterialButton(
                minWidth: size.width * 0.7,
                onPressed: () {},
                color: const Color.fromARGB(255, 22, 120, 201),
                child: const Text(
                  'Set up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65.0),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              child: const Text(
                'See What you can download',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
