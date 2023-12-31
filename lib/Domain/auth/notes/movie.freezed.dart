// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Movie {
  UniqueId get id => throw _privateConstructorUsedError;
  MovieBody get body => throw _privateConstructorUsedError;
  CategoryBody get body1 => throw _privateConstructorUsedError;
  MovieColor get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {UniqueId id, MovieBody body, CategoryBody body1, MovieColor color});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? body1 = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as MovieBody,
      body1: null == body1
          ? _value.body1
          : body1 // ignore: cast_nullable_to_non_nullable
              as CategoryBody,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as MovieColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id, MovieBody body, CategoryBody body1, MovieColor color});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? body1 = null,
    Object? color = null,
  }) {
    return _then(_$_Movie(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as MovieBody,
      body1: null == body1
          ? _value.body1
          : body1 // ignore: cast_nullable_to_non_nullable
              as CategoryBody,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as MovieColor,
    ));
  }
}

/// @nodoc

class _$_Movie extends _Movie {
  const _$_Movie(
      {required this.id,
      required this.body,
      required this.body1,
      required this.color})
      : super._();

  @override
  final UniqueId id;
  @override
  final MovieBody body;
  @override
  final CategoryBody body1;
  @override
  final MovieColor color;

  @override
  String toString() {
    return 'Movie(id: $id, body: $body, body1: $body1, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.body1, body1) || other.body1 == body1) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, body, body1, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);
}

abstract class _Movie extends Movie {
  const factory _Movie(
      {required final UniqueId id,
      required final MovieBody body,
      required final CategoryBody body1,
      required final MovieColor color}) = _$_Movie;
  const _Movie._() : super._();

  @override
  UniqueId get id;
  @override
  MovieBody get body;
  @override
  CategoryBody get body1;
  @override
  MovieColor get color;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
