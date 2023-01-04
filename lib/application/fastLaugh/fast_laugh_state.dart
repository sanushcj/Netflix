part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState(
      {required List<Downloads> videosList,
      // required List<int> likedvideoids,
      required bool isLoading,
      required bool isError}) = _Initial;

  factory FastLaughState.initial() => FastLaughState(
        videosList: [],
        isError: false,
        isLoading: true,
      );
}
