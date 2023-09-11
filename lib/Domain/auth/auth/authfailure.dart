import 'package:freezed_annotation/freezed_annotation.dart';
part 'authfailure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledbyuser() = CancelledByUser;
  const factory AuthFailure.servererror() = ServerError;
  const factory AuthFailure.emailalreadyinuse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidemailandpasswordcomnination() =
      InvalidEmailAndPasswordCombination;
}
