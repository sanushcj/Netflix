import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';
@freezed
class Downloads with _$Downloads{
  const factory Downloads({
  @JsonKey(name: "poster _path")  required String? PosterPath
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) => _$DownloadsFromJson(json);
}