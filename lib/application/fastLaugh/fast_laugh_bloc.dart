import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';

import '../../domain/downloads/models/downloadsModel.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyvideourls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
];

ValueNotifier<Set<int>> likedVideoIdsNorifierr = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IdownloadsRepo _downloadsService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      emit(
        FastLaughState(
          videosList: [],
          isLoading: true,
          isError: true,
        ),
      );

      final _result = await _downloadsService.getDownloadsImages();
      final _state = _result.fold(
          (l) => FastLaughState(
                videosList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => FastLaughState(
                videosList: resp,
                isLoading: false,
                isError: false,
              ));
      emit(_state);
    });

    on<LikeVideo>((event, emit) async {
      likedVideoIdsNorifierr.value.add(event.id);
      likedVideoIdsNorifierr.notifyListeners();
    });
    on<Unlikevideo>((event, emit) async {
      likedVideoIdsNorifierr.value.remove(event.id);
      likedVideoIdsNorifierr.notifyListeners();
    });
  }
}
