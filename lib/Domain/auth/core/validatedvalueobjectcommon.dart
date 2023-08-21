import 'package:app_3/Domain/auth/core/valuefailure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validatedemailaddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatedpassword(String input) {
  if (input.length >= 6) {
    return Right(input);
  } else {
    return Left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return Right(input);
  } else {
    return Left(
        ValueFailure.exceedinglength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return Right(input);
  } else {
    return Left(ValueFailure.empty(failedValue: input));
  }
}


Either<ValueFailure<KtList<Type>>, KtList<Type>> validateMaxListLength<Type>(
    KtList<Type> input, int maxLength){
         if (input.size <= maxLength) {
    return Right(input);
  } else {
    return Left(
        ValueFailure.listTooLong(failedValue: input, max: maxLength));
  } 
    }
