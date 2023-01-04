import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/apiendpoints.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloadsModel.dart';

@LazySingleton(as: IdownloadsRepo)
class DownloadsRepository implements IdownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downoads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // log(response.data['results'].toString());

        //
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        //  log(response.toString());

        // print(downloadsList);

        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
