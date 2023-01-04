import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/hotandnews/model/hotandnews.dart';

abstract class HotandNewService{

  Future<Either<MainFailure, Hotandnews>> getHotandNewMoviedata();
    Future<Either<MainFailure, Hotandnews>> getHotandNewTVdata();

}