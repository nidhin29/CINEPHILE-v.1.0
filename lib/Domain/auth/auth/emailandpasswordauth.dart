import 'package:app_3/Domain/auth/core/validatedvalueobjectcommon.dart';
import 'package:app_3/Domain/auth/core/valuefailure.dart';
import 'package:app_3/Domain/auth/core/valueobjectcommon.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(validatedemailaddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(validatedpassword(input));
  }

  const Password._(this.value);
}
