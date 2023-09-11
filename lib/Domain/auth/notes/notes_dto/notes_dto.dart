import 'dart:ui';

import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notes_dto.freezed.dart';
part 'notes_dto.g.dart';

@freezed
abstract class MoviesDto implements _$MoviesDto {
  const MoviesDto._();

  const factory MoviesDto({
    String? id,
    String? body,
    String? body1,
    int? color,
    @ServerTimeStampConverter() FieldValue? serverTimeStamp,
  }) = _MoviesDto;

  factory MoviesDto.fromDomain(Movie movie) {
    return MoviesDto(
      id: movie.id.getOrCrash(),
      body: movie.body.getOrCrash(),
      color: movie.color.getOrCrash().value,
      body1: movie.body1.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
  Movie toDomain() {
    return Movie(
      id: UniqueId.fromUniqueString(id!),
      body: MovieBody(body!),
      color: MovieColor(Color(color!)),
      body1: CategoryBody(body1!),
    );
  }

  factory MoviesDto.fromJson(Map<String, dynamic> json) =>
      _$MoviesDtoFromJson(json);
  factory MoviesDto.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return MoviesDto.fromJson(data).copyWith(id: doc.id);
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();
  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue object) {
    return object;
  }
}
