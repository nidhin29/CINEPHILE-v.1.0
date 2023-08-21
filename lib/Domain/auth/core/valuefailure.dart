import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'valuefailure.freezed.dart';
  
@freezed  
abstract class ValueFailure<Type> with _$ValueFailure<Type> {
  const factory ValueFailure.invalidEmail({
    required Type failedValue
  }) = InvalidEmail<Type>;
  const factory ValueFailure.shortPassword({
    required Type failedValue
  }) = ShortPassword<Type>;
   const factory ValueFailure.exceedinglength({
    required Type failedValue,
    required int max
  }) = ExceedingLength<Type>;
   const factory ValueFailure.listTooLong({
    required Type failedValue,
    required int max
  }) = ListTooLong<Type>;
   const factory ValueFailure.empty({
    required Type failedValue
  }) = Empty<Type>;
   const factory ValueFailure.multiLine({
    required Type failedValue
  }) = MultiLine<Type>;
}