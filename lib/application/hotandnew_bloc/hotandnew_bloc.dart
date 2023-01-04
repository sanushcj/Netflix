import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/hotandnews/hot_and_new_service.dart';

import '../../domain/hotandnews/model/hotandnews.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotandNewService _hotandnewService;

  HotandnewBloc(this._hotandnewService) : super(HotandnewState.initial()) {
    on<LoaddatainComingsoon>((event, emit) async {
      emit(
        const HotandnewState(
            comingSoonList: [],
            EveryonesWathcingnList: [],
            isLoading: true,
            hasError: false),
      );
      final _result = await _hotandnewService.getHotandNewMoviedata();

      final newState = _result.fold((MainFailure failure) {
        return const HotandnewState(
            comingSoonList: [],
            EveryonesWathcingnList: [],
            isLoading: true,
            hasError: false);
      }, (Hotandnews resp) {
        return HotandnewState(
            comingSoonList: resp.results,
            EveryonesWathcingnList: state.EveryonesWathcingnList,
            isLoading: false,
            hasError: false);
      });
      emit(newState);
    });

    on<LoaddatainEveryoneswathing>((event, emit)async {      emit(
        const HotandnewState(
            comingSoonList: [],
            EveryonesWathcingnList: [],
            isLoading: true,
            hasError: false),
      );
      final _result = await _hotandnewService.getHotandNewTVdata();

      final newState = _result.fold((MainFailure failure) {
        return const HotandnewState(
            comingSoonList: [],
            EveryonesWathcingnList: [],
            isLoading: true,
            hasError: false);
      }, (Hotandnews resp) {
        return HotandnewState(
            comingSoonList: state.comingSoonList,
            EveryonesWathcingnList: resp.results,
            isLoading: false,
            hasError: false);
      });
      emit(newState);});
  }
}
