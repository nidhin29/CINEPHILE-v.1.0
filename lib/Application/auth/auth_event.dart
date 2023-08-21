part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailchanged(String emailstring) = EmailChanged;
  const factory AuthEvent.passwordchanged(String passwordstring) = PasswordChanged;
  const factory AuthEvent.signinwithemailandpassword() = SignInWithEmailAndPassword;
  const factory AuthEvent.registerwithemailandpassword() = RegisterWithEmailAndPassword;
  const factory AuthEvent.signinwithgoogle() = SignInWithGoogle;
    
}