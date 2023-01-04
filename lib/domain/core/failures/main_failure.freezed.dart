// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverfailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_serverfailure value) serverfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_serverfailure value)? serverfailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_serverfailure value)? serverfailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClientFailureCopyWith<$Res> {
  factory _$$_ClientFailureCopyWith(
          _$_ClientFailure value, $Res Function(_$_ClientFailure) then) =
      __$$_ClientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientFailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_ClientFailure>
    implements _$$_ClientFailureCopyWith<$Res> {
  __$$_ClientFailureCopyWithImpl(
      _$_ClientFailure _value, $Res Function(_$_ClientFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClientFailure with DiagnosticableTreeMixin implements _ClientFailure {
  const _$_ClientFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.clientFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainFailure.clientFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClientFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverfailure,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverfailure,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverfailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_serverfailure value) serverfailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_serverfailure value)? serverfailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_serverfailure value)? serverfailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements MainFailure {
  const factory _ClientFailure() = _$_ClientFailure;
}

/// @nodoc
abstract class _$$_serverfailureCopyWith<$Res> {
  factory _$$_serverfailureCopyWith(
          _$_serverfailure value, $Res Function(_$_serverfailure) then) =
      __$$_serverfailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_serverfailureCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_serverfailure>
    implements _$$_serverfailureCopyWith<$Res> {
  __$$_serverfailureCopyWithImpl(
      _$_serverfailure _value, $Res Function(_$_serverfailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_serverfailure with DiagnosticableTreeMixin implements _serverfailure {
  const _$_serverfailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainFailure.serverfailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainFailure.serverfailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_serverfailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverfailure,
  }) {
    return serverfailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverfailure,
  }) {
    return serverfailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverfailure,
    required TResult orElse(),
  }) {
    if (serverfailure != null) {
      return serverfailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_serverfailure value) serverfailure,
  }) {
    return serverfailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_serverfailure value)? serverfailure,
  }) {
    return serverfailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_serverfailure value)? serverfailure,
    required TResult orElse(),
  }) {
    if (serverfailure != null) {
      return serverfailure(this);
    }
    return orElse();
  }
}

abstract class _serverfailure implements MainFailure {
  const factory _serverfailure() = _$_serverfailure;
}
