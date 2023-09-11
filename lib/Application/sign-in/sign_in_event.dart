part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.authCheckRequested() = AuthCheckRequested;
  const factory SignInEvent.signOut() = SignOut;
}
