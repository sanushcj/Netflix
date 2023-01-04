import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/search/search_service.dart';

import '../../domain/downloads/models/downloadsModel.dart';
import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo _downloadsService;
  final SearchService _searchService;

  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    on<Intitialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
              searchResultList: [],
              idleList: state.idleList,
              isloading: false,
              isError: false),
        );
        // return;
      }

      final _result = await _downloadsService.getDownloadsImages();
      final _state = _result.fold((MainFailure f) {
        return const SearchState(
            searchResultList: [],
            idleList: [],
            isloading: false,
            isError: true);
      }, (List<Downloads> list) {
        return SearchState(
            searchResultList: [],
            idleList: list,
            isloading: false,
            isError: false);
      });
      emit(_state);
    });

    on<searchMovie>((event, emit) async {
      // log(event.movieQuery);
      emit(
        SearchState(
            searchResultList: [],
            idleList: [],
            isloading: true,
            isError: false),
      );

      final result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = result.fold(
        (MainFailure f) {
          return const SearchState(
              searchResultList: [],
              idleList: [],
              isloading: false,
              isError: true);
        },
        (SearchResp r) {
          return SearchState(
              searchResultList: r.results,
              idleList: [],
              isloading: false,
              isError: false);
        },
      );

      emit(_state);
    });
  }
}
