import 'package:app_3/Domain/auth/core/valuefailure.dart';
import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie.freezed.dart';

@freezed
abstract class Movie implements _$Movie {
  const Movie._();
  const factory Movie(
      {required UniqueId id,
      required MovieBody body,
      required CategoryBody body1,
      required MovieColor color,
      required bool done}) = _Movie;
  factory Movie.empty() => Movie(
      id: UniqueId(),
      body: MovieBody(''),
      body1: CategoryBody(''),
      color: MovieColor(MovieColor.predefinedColors[0]),
      done: false);
  Option<ValueFailure<dynamic>> get failureOption {
    return body.value.andThen(body1.value).fold((f) => some(f), (_) => none());
  }
}
