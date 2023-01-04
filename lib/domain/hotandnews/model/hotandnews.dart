import 'package:json_annotation/json_annotation.dart';

part 'hotandnews.g.dart';


@JsonSerializable()
class Hotandnews {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<Hotandnewdata> results;

  Hotandnews({this.page, this.results = const []});

  factory Hotandnews.fromJson(Map<String, dynamic> json) {
    return _$HotandnewsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandnewsToJson(this);
}

@JsonSerializable()
class Hotandnewdata {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'original_name')
  String? originalName;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'title')
  String? title;

  Hotandnewdata({
    this.adult,
    this.backdropPath,
    this.id,
    this.originalName,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory Hotandnewdata.fromJson(Map<String, dynamic> json) {
    return _$HotandnewdataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandnewdataToJson(this);
}
