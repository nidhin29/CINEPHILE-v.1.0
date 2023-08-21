import 'dart:async';

import 'package:app_3/Domain/auth/auth/i_authfailure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IauthFailure authFailure;
  SignInBloc(this.authFailure) : super(const SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    await Future.delayed(const Duration(seconds: 2));
    yield const SignInState.initial();

    yield* event.map(authCheckRequested: (e) async* {
      final useroption = await authFailure.getSignedInUser();
      yield useroption.fold(() => const SignInState.unauthenticated(),
          (a) => const SignInState.authenticated());
    }, signOut: (e) async* {
      await authFailure.signout();
      yield const SignInState.unauthenticated();
    });
  }
}
