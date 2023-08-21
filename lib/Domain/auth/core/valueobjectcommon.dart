// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app_3/Domain/auth/core/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:app_3/Domain/auth/core/valuefailure.dart';
import 'package:uuid/uuid.dart';

abstract class ValueObject<Type> {
  const ValueObject();
  Either<ValueFailure<Type>, Type> get value;
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => Left(l), (r) => const Right(unit));
  }

  Type getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), id);
  }

  bool isValid() => value.isRight();
  @override
  bool operator ==(covariant ValueObject<Type> other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(Right(const Uuid().v1()));
  }
  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(Right(uniqueId));
  }

  const UniqueId._(
    this.value,
  );
}
