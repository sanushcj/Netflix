import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadsModel.freezed.dart';
part 'downloadsModel.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "backdrop_path") required String? backdroppath,
  }) = _Download;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
