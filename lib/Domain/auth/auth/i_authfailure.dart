import 'package:app_3/Domain/auth/auth/authfailure.dart';
import 'package:app_3/Domain/auth/auth/emailandpasswordauth.dart';
import 'package:app_3/Domain/auth/auth/user.dart';
import 'package:dartz/dartz.dart';


abstract class IauthFailure {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle( );
  Future<Option<User1>> getSignedInUser();
  Future<void> signout();
}
