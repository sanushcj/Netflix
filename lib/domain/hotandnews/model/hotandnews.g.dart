// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotandnews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hotandnews _$HotandnewsFromJson(Map<String, dynamic> json) => Hotandnews(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Hotandnewdata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HotandnewsToJson(Hotandnews instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

Hotandnewdata _$HotandnewdataFromJson(Map<String, dynamic> json) =>
    Hotandnewdata(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalName: json['original_name'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    )..overview = json['overview'] as String?;

Map<String, dynamic> _$HotandnewdataToJson(Hotandnewdata instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
