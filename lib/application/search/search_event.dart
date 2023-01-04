part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.intitialize() = Intitialize;
  const factory SearchEvent.searchMovie({
    required String movieQuery,
  }) = searchMovie;
}
