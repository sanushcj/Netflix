import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloadsModel.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
