// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloadsModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Download.fromJson(json);
}

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdroppath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res, Downloads>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "backdrop_path") String? backdroppath});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res, $Val extends Downloads>
    implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? backdroppath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      backdroppath: freezed == backdroppath
          ? _value.backdroppath
          : backdroppath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$$_DownloadCopyWith(
          _$_Download value, $Res Function(_$_Download) then) =
      __$$_DownloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "backdrop_path") String? backdroppath});
}

/// @nodoc
class __$$_DownloadCopyWithImpl<$Res>
    extends _$DownloadsCopyWithImpl<$Res, _$_Download>
    implements _$$_DownloadCopyWith<$Res> {
  __$$_DownloadCopyWithImpl(
      _$_Download _value, $Res Function(_$_Download) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
    Object? backdroppath = freezed,
  }) {
    return _then(_$_Download(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      backdroppath: freezed == backdroppath
          ? _value.backdroppath
          : backdroppath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Download implements _Download {
  const _$_Download(
      {@JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "backdrop_path") required this.backdroppath});

  factory _$_Download.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdroppath;

  @override
  String toString() {
    return 'Downloads(posterPath: $posterPath, title: $title, backdroppath: $backdroppath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Download &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.backdroppath, backdroppath) ||
                other.backdroppath == backdroppath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title, backdroppath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadCopyWith<_$_Download> get copyWith =>
      __$$_DownloadCopyWithImpl<_$_Download>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadToJson(
      this,
    );
  }
}

abstract class _Download implements Downloads {
  const factory _Download(
      {@JsonKey(name: "poster_path")
          required final String? posterPath,
      @JsonKey(name: "title")
          required final String? title,
      @JsonKey(name: "backdrop_path")
          required final String? backdroppath}) = _$_Download;

  factory _Download.fromJson(Map<String, dynamic> json) = _$_Download.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdroppath;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadCopyWith<_$_Download> get copyWith =>
      throw _privateConstructorUsedError;
}
