import 'package:dartz/dartz.dart';
import 'package:netflix/domain/search/model/search_resp/search_resp.dart';

import '../core/failures/main_failure.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
