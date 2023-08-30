import 'dart:ui';
import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notes_dtos.freezed.dart';
part 'notes_dtos.g.dart';
@freezed
@JsonSerializable()
abstract class MovieItemDto implements _$MovieItemDto {
  const MovieItemDto._();
  const factory MovieItemDto(
      {required String? id,
      required String body,
      required String body1,
      required int color,
      required bool done}) = _MovieItemDto;

  factory MovieItemDto.fromDomain(Movie movie) {
    return MovieItemDto(
      id: movie.id.getOrCrash(),
      body: movie.body.getOrCrash(),
      done: movie.done,
      color: movie.color.getOrCrash().value,
      body1: movie.body1.getOrCrash(),
    );
  }

  Movie toDomain() {
    return Movie(
      id: UniqueId.fromUniqueString(id!),
      body: MovieBody(body),
      color: MovieColor(Color(color)),
      done: done,
      body1: CategoryBody(body1),
    );
  }

 factory MovieItemDto.fromJson(Map<String, dynamic> json) {
  return MovieItemDto(
    id: json['id'] as String? ?? "" , 
    body: json['body'] as String,
    body1: json['body1'] as String,
    color: json['color'] as int,
    done: json['done'] as bool,
  );
}

}

