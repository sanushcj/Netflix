part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.initialize() = Initialize;

  const factory FastLaughEvent.likevideo({required int id}) = LikeVideo;
  const factory FastLaughEvent.unlikevideo({required int id}) = Unlikevideo;
}
