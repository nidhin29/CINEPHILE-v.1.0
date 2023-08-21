import 'dart:async';

import 'package:app_3/Domain/auth/auth/i_authfailure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../Domain/auth/auth/authfailure.dart';
import '../../Domain/auth/auth/emailandpasswordauth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IauthFailure authfailure;
  AuthBloc(this.authfailure) : super(AuthState.intial());
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
        emailchanged: (e) async* {
          yield state.copyWith(
              emailAddress: EmailAddress(e.emailstring),
              authfailureorsuccess: none());
        },
        passwordchanged: (e) async* {
          yield state.copyWith(
              password: Password(e.passwordstring),
              authfailureorsuccess: none());
        },
        signinwithemailandpassword: (e) async* { if (state.emailAddress.isValid() && state.password.isValid()) {
            yield state.copyWith(
                isSubmitting: true, authfailureorsuccess: none());
            final failureorsuccess = await authfailure.signInWithEmailAndPassword(
                emailAddress: state.emailAddress, password: state.password);
              yield state.copyWith(
              isSubmitting: false,
              authfailureorsuccess: some(failureorsuccess));    
          }
            yield state.copyWith(
              showerrormessages: true,
              authfailureorsuccess: none());},
        registerwithemailandpassword: (e) async* {
          if (state.emailAddress.isValid() && state.password.isValid()) {
            yield state.copyWith(
                isSubmitting: true, authfailureorsuccess: none());
            final failureorsuccess = await authfailure.registerWithEmailAndPassword(
                emailAddress: state.emailAddress, password: state.password);
              yield state.copyWith(
              isSubmitting: false,
              authfailureorsuccess: some(failureorsuccess));    
          }
            yield state.copyWith(
              showerrormessages: true,
              authfailureorsuccess: none());
        },
        signinwithgoogle: (e) async* {
          yield state.copyWith(
              isSubmitting: true, authfailureorsuccess: none());
          final failureorsuccess = await authfailure.signInWithGoogle();
          yield state.copyWith(
              isSubmitting: false,
              authfailureorsuccess: some(failureorsuccess));
        });
  }
}
