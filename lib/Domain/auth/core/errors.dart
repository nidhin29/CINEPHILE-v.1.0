import 'package:app_3/Domain/auth/core/valuefailure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);
  @override
  String toString() {
    const expression = 'Encountered a ValueFailure at an unrecoverable point.Terminating ';
    return Error.safeToString('$expression Failure was: $valueFailure');
  }
}
