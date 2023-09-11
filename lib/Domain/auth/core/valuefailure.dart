import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'valuefailure.freezed.dart';

@freezed
abstract class ValueFailure<Type> with _$ValueFailure<Type> {
  const factory ValueFailure.invalidEmail({required Type failedValue}) =
      InvalidEmail<Type>;
  const factory ValueFailure.shortPassword({required Type failedValue}) =
      ShortPassword<Type>;
  const factory ValueFailure.empty({required Type failedValue}) = Empty<Type>;
}
