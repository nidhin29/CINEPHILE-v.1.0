import 'package:app_3/Domain/auth/auth/authfailure.dart';
import 'package:app_3/Domain/auth/auth/emailandpasswordauth.dart';
import 'package:app_3/Domain/auth/auth/i_authfailure.dart';
import 'package:app_3/Domain/auth/auth/user.dart';
import 'package:app_3/Domain/auth/core/errors.dart';
import 'package:app_3/Infrastructure/firebase_user-mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IauthFailure)
class FirebaseAuthFailure implements IauthFailure {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  FirebaseAuthFailure(this.firebaseAuth, this.googleSignIn);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.value
        .fold((left) => throw UnexpectedValueError(left), (right) => right);
    final passwordStr = password.value
        .fold((left) => throw UnexpectedValueError(left), (right) => right);
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailalreadyinuse());
      } else {
        return left(const AuthFailure.servererror());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.value
        .fold((left) => throw UnexpectedValueError(left), (right) => right);
    final passwordStr = password.value
        .fold((left) => throw UnexpectedValueError(left), (right) => right);
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidemailandpasswordcomnination());
      } else {
        return left(const AuthFailure.servererror());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleuser = await googleSignIn.signIn();
      if (googleuser == null) {
        return left(const AuthFailure.cancelledbyuser());
      }
      final googleAuthentification = await googleuser.authentication;
      final authcredential = GoogleAuthProvider.credential(
          idToken: googleAuthentification.idToken,
          accessToken: googleAuthentification.accessToken);
      return firebaseAuth
          .signInWithCredential(authcredential)
          .then((r) => right(unit));
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.servererror());
    }
  }

  @override
  @override
  Future<void> signout() {
    return Future.wait([googleSignIn.signOut(), firebaseAuth.signOut()]);
  }

  @override
  Future<Option<User1>> getSignedInUser() async {
    User? firebaseUser = firebaseAuth.currentUser;
    return optionOf(firebaseUser?.toDomain());
  }
}
