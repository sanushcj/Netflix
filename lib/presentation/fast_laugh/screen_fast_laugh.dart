import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/presentation/fast_laugh/widget/videolistitem.dart';

class ScreenFastlaugh extends StatelessWidget {
  const ScreenFastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context).add(Initialize());
    });

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return Center(
                child: Text('error While Getting Data'),
              );
            } else if (state.videosList.isEmpty) {
              return Center(
                child: Text('error While Getting Data'),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView(
                    scrollDirection: Axis.vertical,
                    children: List.generate(
                        state.videosList.length,
                        (index) => videolistitemInheritedWidget(
                            widget: VideolistItem(index: index),
                            Moviesdata: state.videosList[index]))),
              );
            }
          },
        ),
      ),
    );
  }
}
