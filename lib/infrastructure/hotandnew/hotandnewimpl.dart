import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/hotandnews/hot_and_new_service.dart';
import 'package:netflix/domain/hotandnews/model/hotandnews.dart';

import '../../domain/core/apiendpoints.dart';

@LazySingleton(as: HotandNewService)
class HotandNewImplementation implements HotandNewService {
  @override
  Future<Either<MainFailure, Hotandnews>> getHotandNewMoviedata() async {
    // TODO: implement getHotandNewMoviedata
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotandnewmovie,
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Hotandnews.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, Hotandnews>> getHotandNewTVdata() async {
    // TODO: implement getHotandNewTVdata
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hotandnewTv,
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Hotandnews.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
