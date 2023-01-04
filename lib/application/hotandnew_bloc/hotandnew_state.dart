part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<Hotandnewdata> comingSoonList,
    required List<Hotandnewdata> EveryonesWathcingnList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotandnewState.initial() => HotandnewState(
      comingSoonList: [],
      EveryonesWathcingnList: [],
      isLoading: false,
      hasError: false);
}
