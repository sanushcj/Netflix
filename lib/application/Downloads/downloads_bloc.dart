

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final Idownloadsrepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsfailureorsussesoption: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadsoption =
          await _downloadsRepo.getDownloadsImage();

      // log(downloadsoption.toString());
      emit(
        downloadsoption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsfailureorsussesoption: some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsfailureorsussesoption: some(
              right(success),
            ),
          ),
        ),
      );
    });
  }
}

