import 'dart:ui';

import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//import 'package:kt_dart/kt.dart';

//import 'list.dart';
part 'notes_dtos.freezed.dart';

@freezed
@JsonSerializable()
abstract class MovieItemDto implements _$MovieItemDto {
   MovieItemDto._();
  const factory MovieItemDto(
      {required String id,
      required String body,
      required int color,
      required bool done}) = _MovieItemDto;

  factory MovieItemDto.fromDomain(Movie movie) {
    return MovieItemDto(
        id: movie.id.getOrCrash(),
        body: movie.body.getOrCrash(),
        done: movie.done,
        color: movie.color.getOrCrash().value);
  }

  Movie toDomain() {
    return Movie(
        id: UniqueId.fromUniqueString(id),
        body: MovieBody(body),
        color: MovieColor(Color(color)),
        done: done);
  }

  factory MovieItemDto.fromJson(Map<String, dynamic> json) =>
      _$MovieItemDtoFromJson(json);
}
