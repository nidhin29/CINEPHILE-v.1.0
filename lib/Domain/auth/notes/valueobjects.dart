import 'dart:ui';

import 'package:app_3/Domain/auth/core/validatedvalueobjectcommon.dart';
import 'package:app_3/Domain/auth/core/valuefailure.dart';
import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:app_3/Domain/auth/core/valuetransformers.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

class MovieBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory MovieBody(String input) {
    return MovieBody._(
        validateSingleLine(input).flatMap(validateStringNotEmpty));
  }

  const MovieBody._(this.value);
}

class CategoryBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory CategoryBody(String input) {
    return CategoryBody._(
        validateSingleLine(input).flatMap(validateStringNotEmpty));
  }
  const CategoryBody._(this.value);
}

class MovieColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  factory MovieColor(Color input) {
    return MovieColor._(Right(makecoloropaque(input)));
  }

  const MovieColor._(this.value);
}

class MovieList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 5;
  factory MovieList(KtList<T> input) {
    return MovieList._(validateMaxListLength(input, maxLength));
  }

  const MovieList._(this.value);
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
