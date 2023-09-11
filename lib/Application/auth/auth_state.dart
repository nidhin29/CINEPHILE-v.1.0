part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
          {required EmailAddress emailAddress,
          required Password password,
          required bool isSubmitting,
          required bool showerrormessages,
          required Option<Either<AuthFailure, Unit>> authfailureorsuccess}) =
      _AuthState;
  factory AuthState.intial() => AuthState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      isSubmitting: false,
      showerrormessages: false,
      authfailureorsuccess: none());
}
